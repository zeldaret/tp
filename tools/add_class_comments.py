import click
import os
import re
import sys

@click.command()
@click.option('--path', required=True, help='Path to the header file or directory.')
def modify_headers(path):
    if os.path.isfile(path):
        process_file(path)
    elif os.path.isdir(path):
        for root, _, files in os.walk(path):
            for file in files:
                if file.endswith('.h'):
                    file_path = os.path.join(root, file)
                    process_file(file_path)
    else:
        sys.exit(f'Error: Path {path} is neither a file nor a directory.')

def process_file(file_path):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()

        class_decl_pattern = re.compile(r'class\s+(\w+)\s*:')
        doxygen_comment_pattern = re.compile(r'/\*\*\s+@ingroup actors-npcs\s+@class\s+\w+\s+@brief', re.MULTILINE)
        
        for i, line in enumerate(lines):
            match = class_decl_pattern.search(line)
            if match:
                class_name = match.group(1)
                # Check if Doxygen comment is missing
                if not doxygen_comment_pattern.search(''.join(lines[max(0, i-3):i])):
                    doxygen_comment = f"""/**\n * @ingroup actors-tags\n * @class {class_name}\n * @brief\n *\n * @details\n *\n */\n"""
                    lines.insert(i, doxygen_comment)
                
                # Stop after processing the first class declaration
                break

        with open(file_path, 'w') as file:
            file.writelines(lines)
        
        print(f'Processed {file_path} successfully.')

    except FileNotFoundError:
        sys.exit(f'Error: File {file_path} not found.')
    except Exception as e:
        sys.exit(f'Error processing file {file_path}: {e}')

if __name__ == '__main__':
    modify_headers()
