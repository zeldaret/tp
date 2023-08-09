import random, os
from typing import List, Tuple
from logger import LOG

def generate_random_rgb_hex() -> str:
    return ''.join([random.choice('0123456789ABCDEF') for _ in range(6)])

def get_translation_units(data) -> list[Tuple[str, List[str], str]]:
        dirs = [{'path': dir_data['path'], 'sub_labels': dir_data.get('sub_labels', [])} for dir_data in data.get('dirs', [])]
        not_dirs = [{'path': dir_data['path'], 'sub_labels': dir_data.get('sub_labels', [])} for dir_data in data.get('notDirs', [])]
        files = [{'path': file_data['path'], 'sub_labels': file_data.get('sub_labels', [])} for file_data in data.get('files', [])]
        not_files = [{'path': file_data['path'], 'sub_labels': file_data.get('sub_labels', [])} for file_data in data.get('notFiles', [])]

        ignore_files = [
            "ctx.c",
            "unknown_translation_unit.cpp",
            "unknown_translation_unit_bss.cpp",
        ] + [file['path'] for file in not_files]

        ignore_dirs = [
            "build", 
            "tools", 
            "expected"
        ] + [directory['path'] for directory in not_dirs]

        tus = []

        LOG.debug('Adding include files directly to tu list')
        for file in files:
            if file['path'] not in ignore_files and file['path'].endswith((".c", ".cpp")):
                tus.append((file['path'].split("/")[-1], file['sub_labels'], file['path']))  # Use sub_labels from file and include file path
                LOG.debug(f'TU name: {file["path"]}')

        directories_to_walk = dirs

        LOG.debug('Adding files from include dirs directly to tu list')
        for directory in directories_to_walk:
            for root, _, files in os.walk(directory['path']):
                if any(ignore_dir in root for ignore_dir in ignore_dirs):
                    continue

                for file in files:
                    if file not in ignore_files and file.endswith((".c", ".cpp")):
                        full_file_path = os.path.join(root, file)
                        tus.append((file, directory['sub_labels'], full_file_path))  # Use sub_labels from directory and include file path

        return tus

def get_sub_labels(data) -> list[str]:
        dirs = [{'path': dir_data['path'], 'sub_labels': dir_data.get('sub_labels', [])} for dir_data in data.get('dirs', [])]
        not_dirs = [{'path': dir_data['path'], 'sub_labels': dir_data.get('sub_labels', [])} for dir_data in data.get('notDirs', [])]
        files = [{'path': file_data['path'], 'sub_labels': file_data.get('sub_labels', [])} for file_data in data.get('files', [])]
        not_files = [{'path': file_data['path'], 'sub_labels': file_data.get('sub_labels', [])} for file_data in data.get('notFiles', [])]

        ignore_files = [
            "ctx.c",
            "unknown_translation_unit.cpp",
            "unknown_translation_unit_bss.cpp",
        ] + [file['path'] for file in not_files]

        ignore_dirs = [
            "build", 
            "tools", 
            "expected"
        ] + [directory['path'] for directory in not_dirs]

        sub_labels = []

        for file in files:
            if file['path'] not in ignore_files and file['path'].endswith((".c", ".cpp")):
                sub_labels.append(file['sub_labels'])

        for directory in dirs:
            for root, _, files in os.walk(directory['path']):
                if any(ignore_dir in root for ignore_dir in ignore_dirs):
                    continue

                for file in files:
                    if file not in ignore_files and file.endswith((".c", ".cpp")):
                        sub_labels.append(directory['sub_labels'])

        sub_labels = [item for sublist in sub_labels for item in sublist]

        # Convert the list of strings to a set
        sub_labels = set(sub_labels)
        return sub_labels