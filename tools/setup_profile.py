import click
import re
import sys

def parse_cpp_data(filepath):
    with open(filepath, 'r') as file:
        data = file.read()

    pattern = re.compile(r"SECTION_DATA extern void\* g_profile_.*\[\d+\] = \{.*\};", re.DOTALL)
    matches = pattern.findall(data)

    transformed_blocks = []
    skipped_blocks = 0

    for match in matches:
        print(match[0])
        # section_data, variable_name, _, values_block = match
        # print(match[0])
        # print(match[2])
        # print(match[2])
        # print(variable_name)
        # print(values_block)
        continue
        if not section_data:  # If SECTION_DATA prefix is missing, the block is already set up
            print(f"Skipping g_profile_{variable_name} because it's already set up.")
            skipped_blocks += 1
            continue

    sys.exit(0)

    values = re.findall(r"\(void\*\)(0x[0-9A-Fa-f]+|\&[a-zA-Z_]+|NULL)", values_block)
    transformed_block = transform_data(variable_name, values)
    transformed_blocks.append(transformed_block)

    return transformed_blocks, skipped_blocks

def transform_data(variable_name, values):
    transformed = f"extern actor_process_profile_definition g_profile_{variable_name.upper()} = {{\n"
    transformed += "    // Add your transformed data here\n"
    transformed += "};\n"
    return transformed

@click.command()
@click.option('--file-path', required=True, help='Filepath of the cpp file to parse.')
def main(file_path):
    transformed_blocks, skipped_blocks = parse_cpp_data(file_path)

    if skipped_blocks > 0:
        print(f"Skipped {skipped_blocks} block(s) that were already set up.")

    if not transformed_blocks:
        print("No blocks to transform.")
        return

    # For simplicity, printing the result. You can modify this to write to a file.
    for block in transformed_blocks:
        print(block)
        print("------")

if __name__ == "__main__":
    main()
