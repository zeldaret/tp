import sys

from .label import *
from typing import Optional

@dataclass
class Issue:
    yaml_data: Optional[dict] = None

    def __eq__(self, other):
        if isinstance(other, Issue):
            return self.unique_id == other.unique_id
        return False

    def __hash__(self):
        return hash(self.unique_id)
    
    def __init__(self,id=None, title=None, body=None, label_ids=None, file_path=None, data=None):
        if data is not None:
            self.yaml_ctor(data)
        else:
            self.id = id
            self.title = title
            self.body = body
            self.label_ids = label_ids
            self.file_path = file_path

    def yaml_ctor(self,data):
        for tu, labels, file_path in get_translation_units(data):
            self.id = None
            self.title = tu
            self.body = None
            self.file_path = file_path
            self.label_ids = []

    def set_open(self):
        pass

    def set_closed(self):
        LOG.debug(f'Closing issue {self.id}')

        mutation = """
        mutation CloseIssue($id: ID!) {
            closeIssue(input: {issueId: $id}) {
                clientMutationId
            }
        }
        """

        variables = {
            "id": self.id
        }

        data = GraphQLClient.get_instance().make_request(mutation, variables)
        if data:
            LOG.info(f'Closed issue {self.id}')
        else:
            LOG.error(f'Failed to close issue {self.id}')
            sys.exit(1)
            

            

    @staticmethod
    def delete_all():
        LOG.debug(f'Deleting all issues in {RepoInfo.owner.name}/{RepoInfo.name}')

        issue_state = StateFile.data["issues"]
        if issue_state is not None and len(issue_state) > 0:
            for issue in issue_state.copy():
                Issue(
                    file_path=issue["file_path"],
                    id=issue["id"],
                    title=issue["file_path"]
                ).delete()
        else:
            LOG.warning(f'No issues found in state file, nothing to delete.')
            return
        
    @staticmethod
    def get_all_from_github() -> list['Issue']:
        return Issue.get_open() + Issue.get_closed()

    @staticmethod
    def get_closed() -> list['Issue']:
        return Issue.get_by_state("CLOSED")
    
    @staticmethod
    def get_open() -> list['Issue']:
        return Issue.get_by_state("OPEN")
    
    @staticmethod
    def get_all_from_yaml(data):
        ret_issues = []
        labels_dict = {label['name']: label['id'] for label in StateFile.data["labels"]}

        for d in data:
            # Get tu, labels, filepath for current project
            tu_info = get_translation_units(d)

            # Add in project name as a label
            for idx, (tu, labels, path) in enumerate(tu_info):
                new_labels = labels + [d['project']['title']]
                tu_info[idx] = (tu, new_labels, path)
            

            for tu, labels, file_path in tu_info:
                state_label_ids = []

                # Fetch label ids from state file
                for label in labels:
                    if label in labels_dict:
                        LOG.debug(f'Found label {label} for TU {tu} in state file, adding to issue.')
                        state_label_ids.append(labels_dict[label])
                    else:
                        LOG.error(f'Label {label} not found in state file, please run ./tp github-sync-labels first.')
                        sys.exit(1)

                issue = Issue(
                    id=None, # set in check_and_create or create method
                    title=tu,
                    body=None,
                    label_ids=state_label_ids,
                    file_path=file_path
                )

                ret_issues.append(issue)

        return ret_issues
    
    @staticmethod
    def get_by_unique_id(unique_id: str) -> 'Issue':
        LOG.debug(f'Getting issue with unique ID {unique_id} on {RepoInfo.owner.name}/{RepoInfo.name}')

        query = '''
        query ($owner: String!, $repo: String!, $first: Int!, $after: String) {
            repository(owner: $owner, name: $repo) {
                issues(first: $first, after: $after) {
                    pageInfo {
                        endCursor
                        hasNextPage
                    }
                    nodes {
                        title
                        id
                        body
                        labels(first: 100) {
                            nodes {
                                id
                                name
                            }
                        }
                    }
                }
            }
        }
        '''

        has_next_page = True
        cursor = None

        while has_next_page:
            variables = {
                "owner": RepoInfo.owner.name,
                "repo": RepoInfo.name,
                "first": 100,
                "after": cursor
            }

            data = GraphQLClient.get_instance().make_request(query, variables)
            if data:
                issues = data['data']['repository']['issues']['nodes']
                for issue in issues:
                    labels = sorted([label['name'] for label in issue['labels']['nodes']])
                    issue_unique_id = issue['title'] + '-' + '-'.join(labels)
                    if issue_unique_id == unique_id:
                        return Issue(
                            id=issue['id'], 
                            title=issue['title'],
                            body=issue['body'],
                            labels=[
                                Label(
                                    id=label['id'], 
                                    name=label['name']
                                ) for label in issue['labels']['nodes']
                            ],
                            unique_id=unique_id
                        )

                page_info = data['data']['repository']['issues']['pageInfo']
                has_next_page = page_info['hasNextPage']
                cursor = page_info['endCursor']
            else:
                LOG.warning(f'No issue found with unique ID {unique_id}')
                return None

    @staticmethod
    def get_by_state(state: str) -> list['Issue']:
        LOG.debug(f'Getting {state} issues on {RepoInfo.owner.name}/{RepoInfo.name}')
        
        query = '''
        query ($owner: String!, $repo: String!, $state: [IssueState!], $cursor: String) {
            repository(owner: $owner, name: $repo) {
                issues(first: 100, states: $state, after: $cursor) {
                    pageInfo {
                        endCursor
                        hasNextPage
                    }
                    nodes {
                        title
                        id
                        body
                        labels(first: 100) {
                            nodes {
                                id
                                name
                            }
                        }
                    }
                }
            }
        }
        '''

        
        all_issues = []
        has_next_page = True
        cursor = None

        while has_next_page:
            variables = {
                "owner": RepoInfo.owner.name,
                "repo": RepoInfo.name,
                "state": state,
                "cursor": cursor
            }

            data = GraphQLClient.get_instance().make_request(query, variables)
            if data:
                issues = data['data']['repository']['issues']['nodes']
                for issue in issues:
                    insert_issue = Issue(
                        id=issue['id'], 
                        title=issue['title'],
                        body=issue['body']
                    )

                    all_issues.append(insert_issue)


                LOG.debug(f'{state} issues retrieved: {issues}')
                page_info = data['data']['repository']['issues']['pageInfo']
                has_next_page = page_info['hasNextPage']
                cursor = page_info['endCursor']

        LOG.debug(f'All {state} issues retrieved: {all_issues}')
        return all_issues
    
    @staticmethod
    def get_labels_by_id(issue_id: str) -> list[Label]:
        LOG.debug(f'Getting all labels for issue {issue_id} on {RepoInfo.owner.name}/{RepoInfo.name}')

        query = '''
        query ($id: ID!) {
            node(id: $id) {
                ... on Issue {
                    labels(first: 100) {
                        nodes {
                            id
                            name
                        }
                    }
                }
            }
        }
        '''

        variables = {
            "id": issue_id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            labels = data['data']['node']['labels']['nodes']
            LOG.debug(f'Labels retrieved: {labels} for issue {issue_id}')

            ret_labels = []
            for label in labels:
                label = Label(
                    id=label["id"],
                    name=label["name"]
                )

                ret_labels.append(label)

            return ret_labels
        else:
            LOG.debug(f'No labels found for issue {issue_id}')
            return []
        
    def attach_labels(self) -> None:
        LOG.debug(f'Attaching labels to issue {self.id} on {RepoInfo.owner.name}/{RepoInfo.name}')
    
    def check_and_create(self) -> None:
        issues = StateFile.data.get('issues')

        if issues is None:
            issue_dict = {}
        else:
            issue_dict = {issue['file_path']: issue for issue in issues}

        if self.file_path in issue_dict:
            LOG.info(f"Issue {self.title} from TU {self.file_path} already setup!")
            self.id = issue_dict[self.file_path]["id"]
        else:
            LOG.info(f'Creating missing issue {self.title}.')
            self.create()

    # def check_and_attach_labels(self) -> None:
    #     LOG.debug(f'Checking labels for issue {self.title} on {RepoInfo.owner.name}/{RepoInfo.name}')

    #     issues = StateFile.data.get('issues')

    #     if issues is None:
    #         issue_dict = {}
    #     else:
    #         issue_dict = {issue['file_path']: issue for issue in issues}

    #     if self.file_path in issue_dict:
    #         state_labels = StateFile.data.get('labels')
    #         label_ids = issue_dict[self.file_path]["label_ids"]

    #         if label_ids is not None:
    #             state_label_ids = [label['id'] for label in state_labels]
    #             for label_id in label_ids:
    #                 if label_id in state_label_ids:
    #                     LOG.debug(f'Label {label_id} exists in state, continuing')
    #                     continue
    #                 else:
    #                     LOG.error(f'Label {label_id} does not exist in state, please run sync-labels first')
    #                     sys.exit(1)

    #             LOG.info(f'All labels already attached to issue {self.title} on {RepoInfo.owner.name}/{RepoInfo.name}')
    #         else:
    #             LOG.info(f'Attaching labels to issue {self.title} on {RepoInfo.owner.name}/{RepoInfo.name}')

    #             # use yaml data to fetch label names for this issue
    #             # lookup id from state and attach to issue
    #             <replace> = 
    #             for label in <replace>:
    #                 self.attach_label_by_id() # finish

    #             LOG.info(f'Labels attached to issue {self.title} on {RepoInfo.owner.name}/{RepoInfo.name}')


    #         print(label_ids)
    #         sys.exit(0)
    #     else:
    #         LOG.error(f"Issue {self.title} from TU {self.file_path} is missing")
    #         sys.exit(1)

    def create(self):
        repo_id = RepoInfo.id
        mutation = """
        mutation CreateIssue($input: CreateIssueInput!) {
            createIssue(input: $input) {
                issue {
                    id
                    title
                }
            }
        }
        """

        input_dict = {
            "repositoryId": repo_id,
            "title": self.title,
            "body": self.body,
        }

        if self.label_ids is not None:
            input_dict["labelIds"] = self.label_ids

        variables = {
            "input": input_dict
        }

        data = GraphQLClient.get_instance().make_request(mutation, variables)
        if data:
            self.id = data["data"]["createIssue"]["issue"]["id"]
            self.title = data["data"]["createIssue"]["issue"]["title"]
            self.write_state_to_file()
            LOG.info(f'Created Issue {self.title} with ID {self.id}')
            return self.id
        
    def delete(self) -> None:
        LOG.debug(f'Deleting issue {self.title} with ID {self.id}')
        mutation = '''
        mutation DeleteIssue($id: ID!) {
            deleteIssue(input: {issueId: $id}) {
                clientMutationId
            }
        }
        '''

        variables = {
            "id": self.id
        }

        data = GraphQLClient.get_instance().make_request(mutation, variables)
        if data:
            self.write_state_to_file(delete=True)
            LOG.info(f'Successfully deleted issue {self.title}.')
        else:
            LOG.error(f'Failed to delete issue {self.title}')

    def write_state_to_file(self, delete: bool = False):        
        state = {
            "id": self.id,
            "title": self.title,
            "body": self.body,
            "label_ids": self.label_ids,
            "file_path": self.file_path,
        }

        curr_state_issues = StateFile.data.get("issues", None)
        if curr_state_issues is not None:
            for i, issue in enumerate(curr_state_issues):
                if issue['id'] == self.id:
                    if delete:
                        del StateFile.data['issues'][i]
                        break
                    else:
                        StateFile.data['issues'][i] = state
                        break
            else:
                StateFile.data['issues'].append((state))
        else:
            StateFile.data['issues'] = [state]


        with open("tools/pjstate.yml", 'w') as f:
            yaml.safe_dump(StateFile.data, f)