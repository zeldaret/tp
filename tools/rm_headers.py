import os
import subprocess
import click

IGNORE_DIRS = ["expected", "game", "build", "asm", "defs", "docs", "tools"]

def compile_project(wibo_path=None, thread_num=1):
    cmd = ["make", "all", "rels", f"-j{thread_num}"]
    if wibo_path:
        cmd.append(f"WINE={wibo_path}")
    result = subprocess.run(cmd)
    return result.returncode == 0

def process_file(file_path, wibo_path, thread_num):
    with open(file_path, 'r') as f:
        lines = f.readlines()

    # Find the start and end of the #include block
    start_idx, end_idx = None, None
    for i, line in enumerate(lines):
        if line.startswith("#include"):
            if start_idx is None:
                start_idx = i
            end_idx = i
        elif start_idx is not None and line.strip() == "":
            break

    if start_idx is None:
        return
    
    # For each #include in the block, try removing it and recompiling
    i = start_idx
    while i <= end_idx:
        if lines[i].startswith("#include"):
            # Extract the path from the #include directive (without quotes and .h extension)
            included_path = lines[i].split('"')[1].rsplit('.', 1)[0]
            
            # Check if the include path is a substring of the current .c/.cpp file's path
            if (file_path.endswith('.c') or file_path.endswith('.cpp')) and included_path in file_path:
                i += 1
                continue

            removed_line = lines[i]
            lines[i] = ""
            with open(file_path, 'w') as f:
                f.writelines(lines)
            if not compile_project(wibo_path, thread_num):
                lines[i] = removed_line
            else:
                end_idx -= 1
        i += 1

    # Write the final state back to the file
    with open(file_path, 'w') as f:
        f.writelines(lines)

@click.command()
@click.option('--wibo_path', default="~/git/c/wibo/build/wibo", help='Path to Wibo.')
@click.option('--thread_num', default=1, type=int, help='Number of threads for compilation.')
def main(wibo_path, thread_num):
    for root, _, files in os.walk("."):  # Assuming current directory, change "." if needed
        if any(ignore_dir in root for ignore_dir in IGNORE_DIRS):
            continue
        for file in files:
            if file.endswith(('.c', '.cpp', '.h')):
                process_file(os.path.join(root, file), wibo_path, thread_num)

if __name__ == "__main__":
    main()
