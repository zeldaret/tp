from .repository import RepoInfo
from .graphql import GraphQLClient
from .util import *
from .state import *
from logger import LOG
from dataclasses import dataclass
from typing import Optional

import yaml, sys

@dataclass
class Label:
    @staticmethod
    def get_all_from_yaml(data, project_name: str) -> list['Label']:
        ret_labels = []
        sub_labels = []

        
        for d in data:
            if d.get('project', {}).get('title', 'MISSING_TITLE') != project_name and project_name is not None:
                LOG.debug("Project name was passed in but doesn't match the current project, skipping.")
                continue
            sub_labels = get_sub_labels(d)

            for label in sub_labels:
                ret_label = Label(name=label)
                ret_labels.append(ret_label)
        
            title_label = Label(data=d)
            ret_labels.append(title_label)
        return ret_labels


    def __eq__(self, other):
        if isinstance(other, Label):
            return self.name == other.name and self.id == other.id
        return False

    def __hash__(self):
        return hash((self.name, self.id))
    
    def __init__(self,data=None,id=None,name=None):
        if data is not None:
            project_data = data.get('project', {})
            self.yaml_ctor(project_data)
        else:
            self.id = id
            self.name = name

    def yaml_ctor(self,project_data):
        self.id = None
        self.name = project_data.get('title', 'MISSING_TITLE')    

    @staticmethod
    def delete_all():
        LOG.debug(f'Deleting all labels in {RepoInfo.owner.name}/{RepoInfo.name}')

        label_state = StateFile.data["labels"]
        if label_state is not None and len(StateFile.data) > 0:
            for label in label_state.copy():
                Label(
                    id=label["id"],
                    name=label["name"]
                ).delete()
        else:
            LOG.warning(f'No labels found in state file, nothing to delete.')
            return

    @staticmethod
    def get_all_from_github() -> list['Label']:
        LOG.debug(f'Fetch all current labels for {RepoInfo.owner.name}/{RepoInfo.name}')
        query = '''
        query ($owner: String!, $repo: String!) {
            repository(owner: $owner, name: $repo) {
                labels(first: 100) {
                    nodes {
                        name
                        id
                    }
                }
            }
        }
        '''

        variables = {
            "owner": RepoInfo.owner.name,
            "repo": RepoInfo.name
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            labels = data['data']['repository']['labels']['nodes']
            LOG.debug(f'Labels retrieved: {labels}')
            return [
                Label(
                    id=label["id"],
                    name=label["name"]
                ) for label in labels
            ]
        else:
            LOG.warning(f'No labels found in {RepoInfo.owner.name}/{RepoInfo.name}')
            return []
    
    @staticmethod
    def get_id_by_name(label_name: str):
        LOG.debug(f'Fetch label ID for label {label_name} in {RepoInfo.owner.name}/{RepoInfo.name}')
        query = '''
        query ($owner: String!, $repo: String!) {
            repository(owner: $owner, name: $repo) {
                labels(first: 100) {
                    nodes {
                        name
                        id
                    }
                }
            }
        }
        '''

        variables = {
            "owner": RepoInfo.owner.name,
            "repo": RepoInfo.name
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            labels = data['data']['repository']['labels']['nodes']
            for label in labels:
                if label['name'] == label_name:
                    LOG.debug(f'Label ID for {label_name} retrieved: {label["id"]}')
                    return label['id']

        LOG.warning(f'Label {label_name} not found in {RepoInfo.owner.name}/{RepoInfo.name}')
        return None
    
    def check_and_create(self) -> None:
        labels = StateFile.data.get('labels')

        if labels is None:
            label_dict = {}
        else:
            label_dict = {label['name']: label for label in labels}

        if self.name in label_dict:
            LOG.info(f"Label {self.name} already setup!")
            self.id = label_dict[self.name]["id"]
            self.name = label_dict[self.name]["name"]
        else:
            LOG.debug(f'Creating missing label {self.name}.')
            self.create()


    def create(self) -> None:
        LOG.debug(f'Creating issue label: {self.name}')

        mutation = '''
        mutation ($repoId: ID!, $labelName: String!, $color: String!) {
            createLabel(input: { name: $labelName, repositoryId: $repoId, color: $color }) {
                label {
                    name
                    id
                }
            }
        }
        '''

        variables = {
            "repoId": RepoInfo.id,
            "labelName": self.name,
            "color": generate_random_rgb_hex()
        }

        
        data = GraphQLClient.get_instance().make_request(mutation, variables)
        if data:
            LOG.debug(f'Create label data: {data}')
            self.id = data['data']['createLabel']['label']['id']
            self.write_state_to_file()
            LOG.info(f"Successfully created label '{self.name} with ID {self.id}'!")
        else:
            LOG.error(f"Failed to create label {self.name}")
            sys.exit(1)
    
    def delete(self) -> None:
        query = '''
        mutation ($labelId: ID!) {
            deleteLabel(input: {
                id: $labelId
            }) {
                clientMutationId
            }
        }
        '''

        variables = {
            "labelId": self.id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            self.write_state_to_file(delete=True)
            LOG.info(f'Successfully deleted label {self.name}')
        else:
            LOG.error(f'Failed to delete label {self.name}')

    def write_state_to_file(self, delete: bool = False):        
        state = {
            "id": self.id,
            "name": self.name
        }

        curr_state_labels = StateFile.data.get('labels',None)

        if curr_state_labels is not None:

            for i, label in enumerate(StateFile.data['labels']):
                if label['id'] == self.id:
                    if delete:
                        del StateFile.data['labels'][i]
                        break
                    else:
                        StateFile.data['labels'][i] = state
                        break
            else:
                StateFile.data['labels'].append((state))
        else:
            StateFile.data['labels'] = [state]


        with open("tools/pjstate.yml", 'w') as f:
            yaml.safe_dump(StateFile.data, f)
