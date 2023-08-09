import sys

from .graphql import GraphQLClient
from typing import ClassVar
from logger import LOG

class OwnerInfo:
    id: ClassVar[str]
    name: ClassVar[str]

class RepoInfo:
    id: ClassVar[str]
    name: ClassVar[str]
    owner: ClassVar[OwnerInfo]

    @classmethod
    def set_ids(cls):
        LOG.debug(f'Fetching repo ID for {cls.name}')

        query = '''
        query ($owner: String!, $repo: String!) {
            repository(owner: $owner, name: $repo) {
                owner {
                    id
                }
                id
            }
        }
        '''
        variables = {
            "owner": cls.owner.name,
            "repo": cls.name
        }

        data = GraphQLClient.get_instance().make_request(query, variables)
        if data:
            cls.id = data['data']['repository']['id']
            cls.owner.id = data['data']['repository']['owner']['id']
        else:
            LOG.error(f"Failed to fetch repo ID! Make sure {cls.owner.name}/{cls.name} exists and isn't private.")
            sys.exit(1)