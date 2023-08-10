import sys

from .option import Option
from .graphql import GraphQLClient
from logger import LOG

class Field:
    def __init__(self, id, name, options):
        self.id = id
        self.name = name
        self.options = options

    @staticmethod
    def get_status_field(project_id: str) -> 'Field':
        LOG.debug(f'Getting status field for project ID {project_id}')
        query = '''
        query ($projectId: ID!) {
            node(id: $projectId) {
                ... on ProjectV2 {
                    fields(first: 100) {
                        nodes {
                            ... on ProjectV2SingleSelectField {
                                name
                                id
                            }
                        }
                    }
                }
            }
        }
        '''

        variables = {
            "projectId": project_id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            fields = data['data']['node']['fields']['nodes']
            for field in fields:
                if 'name' in field and field['name'] == 'Status':
                    field_id = field['id']
                    LOG.info(f'Status Field ID: {field_id}')
                    return Field(
                        id=field_id, 
                        name='Status', 
                        options=Option.get_all_options(field_id)
                    )
        else:
            LOG.critica(f'No field found with name "Status"!')
            sys.exit(1)
            
    def create_option(self, option_name: str):
        LOG.debug(f'Creating option with name {option_name} for field {self.name}')
        query = '''
        mutation ($fieldId: ID!, $optionName: String!) {
            createProjectOption(input: {projectId: $fieldId, name: $optionName}) {
                projectOption {
                    id
                    name
                }
            }
        }
        '''
        variables = {
            "fieldId": self.id,
            "optionName": option_name
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            option_id = data['data']['createProjectOption']['projectOption']['id']
            LOG.info(f'Created option with name {option_name} and ID {option_id}')
            return Option(option_id, option_name)
        else:
            LOG.warning(f'Could not create option with name {option_name}')
            return None
    
    # Finish later if we decide to add more fields other than the default Status field
    def create(self, project_id: str):
        pass

    # Finish later if we decide to add more fields other than the default Status field
    def delete(self):
        pass