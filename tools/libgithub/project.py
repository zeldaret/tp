import yaml

from .issue import *
from .field import *
from typing import Optional

class Project:
    def __eq__(self, other):
        if isinstance(other, Label):
            return self.title == other.name and self.id == other.id
        return False

    def __hash__(self):
        return hash((self.title, self.id))

    def __init__(self, id=None, title=None, number=None, items=None, items_to_attach=None, status_field=None, data=None):
        if data is not None:
            self.id = None
            self.title = data.get("project").get('title', 'MISSING_TITLE')
            self.number = None
            self.items = None
            self.items_to_attach = None
            self.status_field = None
        else:
            self.id = id
            self.title = title
            self.number = number
            self.items = items
            self.items_to_attach = items_to_attach
            self.status_field = status_field  

    @staticmethod
    def get_all_from_yaml(data, project_name) -> list['Project']:
        ret_projects = []
        issues_dict = {issue['file_path']: issue['id'] for issue in StateFile.data["issues"]}

        for d in data:
            if d.get('project', {}).get('title', 'MISSING_TITLE') != project_name and project_name is not None:
                LOG.debug("Project name was passed in but doesn't match the current project, skipping.")
                continue
            items = []

            for tu, _, file_path in get_translation_units(d):
                if file_path in issues_dict:
                    LOG.debug(f'Issue {tu} found in state file.')
                    LOG.debug(f'Adding ID {issues_dict[file_path]} to items.')
                    
                    items.append({
                        "issue_id": issues_dict[file_path]
                    })
                else:
                    LOG.error(f'Issue {tu} not found in state file. Please run ./tp github-sync-issues first.')
                    sys.exit(1)

            project = Project(
                id=None,
                title=d['project']['title'],
                number=None,
                items=[],
                items_to_attach=items
            )

            ret_projects.append(project)
        return ret_projects

    @staticmethod
    def get_all_from_github() -> list['Project']:
        LOG.debug(f'Getting projects on {RepoInfo.owner.name}/{RepoInfo.name}')
        query = '''
        query ($owner: String!, $repo: String!, $cursor: String) {
            repository(owner: $owner, name: $repo) {
                projectsV2(first: 20) {
                    nodes {
                        id
                        title
                        number

                        items(first: 100, after: $cursor) {
                            pageInfo {
                                endCursor
                                hasNextPage
                            }
                            edges {
                                cursor
                                node {
                                    id
                                    content {
                                        ... on Issue {
                                            id
                                            title
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        '''
        variables = {
            "owner": RepoInfo.owner.name,
            "repo": RepoInfo.name,
            "cursor": None,
        }

        ret_projects = []
        while True:
            data = GraphQLClient.get_instance().make_request(query, variables)
            if data:
                projects = data['data']['repository']['projectsV2']['nodes']
                LOG.debug(f'Projects retrieved: {projects}')

                for project in projects:
                    items = []

                    for edge in project['items']['edges']:
                        LOG.debug(f'Item: {edge}')
                        item_id = edge['node']['id']
                        issue_id = edge['node']['content']['id']

                        item = ProjectItem(
                            id=item_id,
                            issue_id = issue_id,
                        )

                        items.append(item)

                    ret_project = Project(
                        id=project['id'], 
                        title=project['title'], 
                        number=project['number'],
                        items=items
                    )

                    ret_projects.append(ret_project)

                # Check if there are more items to fetch
                if len(projects) == 0 or not data['data']['repository']['projectsV2']['nodes'][0]['items']['pageInfo']['hasNextPage']:
                    break

                # Update the cursor to the last item's cursor for the next fetch
                variables['cursor'] = data['data']['repository']['projectsV2']['nodes'][0]['items']['pageInfo']['endCursor']
            else:
                LOG.warning("No projects found!")
                break

        return ret_projects

    
    @staticmethod
    def get_project_by_name(project_name: str) -> Optional['Project']:
        all_projects = Project.get_all_from_github()
        if all_projects:
            for project in all_projects:
                if project.title == project_name:
                    return project
        else:
            LOG.warning(f'No projects found in {RepoInfo.owner.name}/{RepoInfo.name}')
            return None
        
    @staticmethod
    def delete_all():
        LOG.debug(f'Deleting all projects in {RepoInfo.owner.name}/{RepoInfo.name}')
        project_state = StateFile.data["projects"]

        if project_state is not None and len(project_state) > 0:
            for project in project_state.copy():
                Project(
                    id=project["id"],
                    title=project["title"]
                ).delete()
        else:
            LOG.warning(f'No projects found in state file. Nothing to delete.')
            return
        
    def create(self) -> None:
        owner_id = RepoInfo.owner.id
        repo_id = RepoInfo.id
        
        if not owner_id or not repo_id:
            return

        LOG.debug(f'Creating Github project {self.title}')

        mutation = '''
        mutation ($ownerId: ID!, $repoId: ID!, $projectName: String!) {
            createProjectV2(input: { ownerId: $ownerId, repositoryId: $repoId, title: $projectName }) {
                projectV2 {
                    id
                    number
                    title
                }
            }
        }
        '''
        variables = {
            "ownerId": owner_id,
            "repoId": repo_id,
            "projectName": self.title
        }

        data = GraphQLClient.get_instance().make_request(mutation, variables)
        if data:
            self.id = data['data']['createProjectV2']['projectV2']['id']
            self.number = data['data']['createProjectV2']['projectV2']['number']
            self.status_field = Field.get_status_field(self.id)
            self.write_state_to_file()
            self.set_public()

            LOG.info(f"Successfully created project '{self.title}' with ID {self.id} and number {self.number}")
        else:
            LOG.error(f'Failed to create project {self.title}')
            sys.exit(1)

    def check_and_create(self) -> None:
        projects = StateFile.data.get('projects')

        if projects is None:
            project_dict = {}
        else:
            project_dict = {project['title']: project for project in projects}
        
        if self.title in project_dict:
            LOG.info(f'Project {self.title} already exists')
            

            self.id = project_dict[self.title]["id"]
            self.number = project_dict[self.title]["number"]
            self.items = project_dict[self.title]["items"]
            self.status_field = project_dict[self.title]["status_field"]

            missing_issue_ids = [item['issue_id'] for item in self.items_to_attach if item['issue_id'] not in {item['issue_id'] for item in self.items}]
            
            LOG.info(f'Attaching missing issues to project {self.title}')
            if len(missing_issue_ids) > 0:
                for id in missing_issue_ids:
                    self.attach_issue(id)
            else:
                LOG.info(f'All issues already attached to project {self.title}')
        else:
            LOG.info(f'Creating missing project {self.title}')

            self.create()
            for item in self.items_to_attach:
                self.attach_issue(item["issue_id"])

    def attach_issue(self, issue_id) -> None:
        LOG.debug(f'Attaching issue {issue_id} to project {self.title}')
        mutation = """
        mutation AddProjectV2ItemById($input: AddProjectV2ItemByIdInput!) {
            addProjectV2ItemById(input: $input) {
                clientMutationId
                
                item {
                    id
                }
            }
        }
        """

        variables = {
            "input": {
                "projectId": self.id,
                "contentId": issue_id,
                "clientMutationId": "UNIQUE_ID"
            }
        }

        data = GraphQLClient.get_instance().make_request(mutation, variables)
        if data:
            LOG.debug(f'Issue {issue_id} attached to project {self.title}')
            item_id = data['data']['addProjectV2ItemById']['item']['id']
            self.items.append({
                "issue_id": issue_id,
                "item_id": item_id
            })
            self.write_state_to_file()
        else:
            LOG.error(f'Failed to attach issue {issue_id} to project {self.title}')
            sys.exit(1)

    def get_item_id_from_issue(self, issue: Issue) -> str:
        LOG.debug(f'Getting item ID for issue {issue.title} in project {self.title}')

        query = """
        query ($projectId: ID!, $issueId: ID!) {
            projectV2Item(projectId: $projectId, contentId: $issueId) {
                id
            }
        }
        """

        variables = {
            "projectId": self.id,
            "issueId": issue.id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            LOG.debug(f'Got item ID for issue {issue.title} in project {self.title}')
            return data['data']['projectV2Item']['id']
        else:
            LOG.error(f'Failed to get item ID for issue {issue.title} in project {self.title}')
            sys.exit(1)

    def delete(self) -> None:
        query = '''
        mutation ($projectId: ID!) {
            deleteProjectV2(input: {
                projectId: $projectId
            }) {
                clientMutationId
            }
        }
        '''

        variables = {
            "projectId": self.id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            self.write_state_to_file(delete=True)
            LOG.info(f'Successfully deleted project {self.title}.')

        else:
            LOG.error(f'Failed to delete project {self.title}')
            sys.exit(1)

    def set_public(self) -> None:
        query = '''
        mutation UpdateProjectVisibility($input: UpdateProjectV2Input!) {
            updateProjectV2(input: $input) {
                projectV2 {
                    id
                    title
                    public
                }
            }
        }
        '''

        variables = {
            "input": {
                "projectId": self.id,
                "public": True
            }
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            LOG.info(f'Successfully set project {self.title} to public.')
        else:
            LOG.error(f'Failed to set project {self.title} to public.')
            sys.exit(1)

    def set_status_for_item(self, item_id: str, status: str) -> None:
        query = '''
        mutation updateProjectV2ItemFieldValue($input: UpdateProjectV2ItemFieldValueInput!) {
            updateProjectV2ItemFieldValue(input: $input) {
                projectV2Item {
                    databaseId
                }
            }
        }
        '''

        options = self.status_field.options
        option = next((option for option in options if option.name.lower() == status.lower()), None)

        variables = {
            "input": {
                "projectId": self.id,
                "itemId": item_id,
                "fieldId": self.status_field.id,
                "value": {
                    "singleSelectOptionId": option.id
                }
            }
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            LOG.info(f'Successfully set status for item {item_id} to {status}')
        else:
            LOG.error(f'Failed to set status for item {item_id} to {status}')
            sys.exit(1)

    def set_id(self) -> None:
        LOG.debug(f'Getting ID for project {self.title}')

        query = '''
        query ($owner: String!, $name: String!, $projectName: String!) {
            repository(owner: $owner, name: $name) {
                projectsV2(query: $projectName, first: 1) {
                    nodes {
                        id
                        title
                    }
                }
            }
        }
        '''

        variables = {
            "owner": RepoInfo.owner.name,
            "name": RepoInfo.name,
            "projectName": self.title
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            projects = data['data']['repository']['projectsV2']['nodes']
            for project in projects:
                if project['title'] == self.title:
                    project_id = project['id']
                    LOG.info(f'Project ID for {self.title}: {project_id}')
                    self.id = project_id
                else:
                    LOG.critical(f'No project found with title {self.title}')
                    sys.exit(1)
        else:
            LOG.critical(f'Query failed.')
            sys.exit(1)

    def set_items(self) -> None:
        query = '''
        query ($owner: String!, $repo: String!, $cursor: String) {
            repository(owner: $owner, name: $repo) {
                projectsV2(first: 20) {
                    nodes {
                        items(first: 100, after: $cursor) {
                            pageInfo {
                                endCursor
                                hasNextPage
                            }
                            edges {
                                cursor
                                node {
                                    id
                                    content {
                                        ... on Issue {
                                            id
                                            title
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        '''
        variables = {
            "owner": RepoInfo.owner.name,
            "repo": RepoInfo.name,
            "cursor": None,
        }

        self.items = []
        while True:
            data = GraphQLClient.get_instance().make_request(query, variables)

            if data:
                projects = data['data']['repository']['projectsV2']['nodes']

                for project in projects:
                    for edge in project['items']['edges']:
                        item_id = edge['node']['id']
                        issue_id = edge['node']['content']['id']
                        issue_title = edge['node']['content']['title']

                        item = {
                            'id': item_id,
                            'issue_id': issue_id,
                            'issue_title': issue_title
                        }

                        self.items.append(item)

                # Check if there are more items to fetch
                if not data['data']['repository']['projectsV2']['nodes'][0]['items']['pageInfo']['hasNextPage']:
                    break

                # Update the cursor to the last item's cursor for the next fetch
                variables['cursor'] = data['data']['repository']['projectsV2']['nodes'][0]['items']['pageInfo']['endCursor']
            else:
                break

    def write_state_to_file(self, delete: bool = False):
        state = {
            "title": self.title,
            "id": self.id,
            "number": self.number,
            "items": self.items,
            "status_field": self.status_field
        }

        curr_state_projects = StateFile.data.get("projects", None)
        if curr_state_projects is not None:
            for i, project in enumerate(curr_state_projects):
                if project['id'] == self.id:
                    if delete:
                        del StateFile.data['projects'][i]
                        break
                    else:
                        StateFile.data['projects'][i] = state
                        break
            else:
                StateFile.data['projects'].append((state))
        else:
            StateFile.data['projects'] = [state]


        with open(StateFile.file_name, 'w') as f:
            yaml.safe_dump(StateFile.data, f)

# Custom representer for Option
def option_representer(dumper, data):
    return dumper.represent_mapping('!Option', {
        'id': data.id,
        'name': data.name
    })

# Custom constructor for Option
def option_constructor(loader, node):
    values = loader.construct_mapping(node)
    return Option(values['id'], values['name'])

# Custom representer for Field
def field_representer(dumper, data):
    return dumper.represent_mapping('!Field', {
        'id': data.id,
        'name': data.name,
        'options': data.options
    })

# Custom constructor for Field
def field_constructor(loader, node):
    values = loader.construct_mapping(node)
    return Field(values['id'], values['name'], values['options'])

# Register the custom representers and constructors with SafeDumper
yaml.add_representer(Option, option_representer, Dumper=yaml.SafeDumper)
yaml.add_constructor('!Option', option_constructor, Loader=yaml.SafeLoader)
yaml.add_representer(Field, field_representer, Dumper=yaml.SafeDumper)
yaml.add_constructor('!Field', field_constructor, Loader=yaml.SafeLoader)