# This is mostly useless until Github extends their API to allow for view creation.

from .graphql import GraphQLClient
from dataclasses import dataclass
from logger import LOG

@dataclass
class View:
    def set_layoutout(self, layout: str):
        self.layout = layout

    # Doesn't actually work (yet)
    def check_and_create(self):
        LOG.debug(f'Checking if view {self.name} exists')
        query = '''
        query ($projectNumber: String!) {
            node(id: $projectNumber) {
                ... on ProjectV2 {
                    views {
                        nodes {
                            name
                            number
                        }
                    }
                }
            }
        }
        '''
        
        variables = {
            "projectNumber": self.number
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            views = data['data']['node']['views']['nodes']
            LOG.info(f'Views: {views}')

            for view in views:
                if view['name'] == self.name:
                    LOG.info(f'View {self.name} exists')
                    return

            LOG.info(f'View {self.name} does not exist, creating')
            self.create()
        else:
            LOG.warning(f'No views found for project {self.number}')

    # Waiting on Github to update their API
    def create(self):
        pass