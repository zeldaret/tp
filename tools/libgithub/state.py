import yaml, pathlib, os

class StateFile:
    data = None
    file_name = None

    @classmethod
    def load(self, file_name: pathlib.Path):
        if not os.path.exists(file_name):
            default_payload = {
                "issues": [],
                "labels": [],
                "projects": []
            }
            
            with open(file_name, 'w') as f:
                yaml.dump(default_payload, f)

        self.file_name = file_name
        
        with open(file_name, 'r') as f:
            self.data = yaml.safe_load(f)