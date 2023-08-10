from .util import *
from .graphql import GraphQLClient
from dataclasses import dataclass
from logger import LOG

class Option:
    def __init__(self, id, name):
        self.id = id
        self.name = name

    @staticmethod
    def get_all_options(field_id: str) -> list['Option']:
        LOG.debug(f'Getting all options for field {field_id}')
        query = '''
        query ($fieldId: ID!) {
            node(id: $fieldId) {
                ... on ProjectV2SingleSelectField {
                    options {
                        id
                        name
                    }
                }
            }
        }
        '''
        variables = {
            "fieldId": field_id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            options = data['data']['node']['options']
            LOG.info(f'Options: {options}')
            ret_options = []

            for option in options:
                option_id = option['id']
                option_name = option['name']
                ret_options.append(Option(id = option_id, name = option_name))

            return ret_options
        else:
            LOG.warning(f'No options found for field {field_id}')
            return []

    @staticmethod
    def get_id(field_id: str, option_name: str) -> str:
        LOG.debug(f'Getting option ID for field {field_id} with name {option_name}')
        query = '''
        query ($fieldId: ID!) {
            node(id: $fieldId) {
                ... on ProjectV2SingleSelectField {
                    options {
                        id
                        name
                    }
                }
            }
        }
        '''
        variables = {
            "fieldId": field_id
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            options = data['data']['node']['options']
            for option in options:
                if option['name'] == option_name:
                    option_id = option['id']
                    LOG.info(f'{option_name} Option ID: {option_id}')
                    return option_id

        LOG.warning(f'No option found with name {option_name}')
        return None

    def delete(self):
        pass