import yaml, pathlib

class StateFile:
    data = None

    @classmethod
    def load(self, file_name: pathlib.Path):
        with open(file_name, 'r') as f:
            self.data = yaml.safe_load(f)