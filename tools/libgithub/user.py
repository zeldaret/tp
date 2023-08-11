from .graphql import GraphQLClient
from logger import LOG

import sys

class User:
    def __init__(self, id = None, name = None):
        self.id = id
        self.name = name

    def get_id(self):
        LOG.debug(f'Fetch ID for user {self.name}')

        query = '''
        query ($name: String!) {
            user(login: $name) {
                id
            }
        }
        '''
        variables = {
            "name": self.name,
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            self.id = data['data']['user']['id']
            LOG.info(f"Found user {self.name} with ID {self.id}!")
        else:
            LOG.error(f'Failed to find user {self.name}!')
            sys.exit(1)