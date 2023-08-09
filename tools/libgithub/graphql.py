import requests
import sys
import time

from typing import Optional
from logger import LOG

class GraphQLClient:
    instance = None
    url: str = 'https://api.github.com/graphql'
    headers: dict
    personal_access_token: Optional[str] = None

    @classmethod
    def setup(cls, pat_token: Optional[str] = None):
        if cls.instance is None:
            cls.instance = GraphQLClient()
        if pat_token is not None:
            cls.personal_access_token = pat_token
            cls.headers = {
                'Authorization': f'Bearer {cls.personal_access_token}',
                'Accept': 'application/vnd.github.v3+json',
                'Accept': 'application/vnd.github.bane-preview+json',
            }
        else:
            LOG.error('No personal access token provided. Please provide one with the --personal-access-token flag.')
            sys.exit(1)

    @classmethod
    def get_instance(cls):
        if cls.instance is None:
            raise Exception("The singleton instance has not been set up. Call setup() first.")
        return cls.instance

    def __init__(self):
        if self.instance is not None:
            raise Exception("This class is a singleton!")


    def make_request(self, query_or_mutation: str, variables: dict):
        payload = {
            'query': query_or_mutation,
            'variables': variables
        }

        while True:
            response = requests.post(self.url, headers=self.headers, json=payload)
            data = response.json()

            if 'errors' in data:
                error_message = data['errors'][0]['message']
                if 'was submitted too quickly' in error_message or 'API rate limit exceeded' in error_message or 'Something went wrong while executing your query' in error_message:
                    LOG.warning('Hit rate limit. Sleeping for 30 seconds...')
                    time.sleep(30)
                    continue
                else:
                    LOG.error(f"Fail. Error: {error_message}")
                    return None

            return data