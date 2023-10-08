import clang.cindex
import re
import shutil

from logger import LOG

# Regular expression to match #include "asm/..."
asm_pattern = re.compile(r'#\s*include\s*"asm/.*"')

# Include directories passed to clang
include_dirs = ['include','include/dolphin','src']

class FunctionChecker:
    def __init__(self, file_path):
        self.file_path = file_path
        self.backup_file_path = None
        self.index = clang.cindex.Index.create()
        self.include_options = []
        self.not_attempted = []
        self.new_not_attempted = []
        self.attempted = []
        self.completed = []
        
        for dir in include_dirs:
            self.include_options += ['-I', dir]

    def replace_static_asm(self):
        pattern = r'\bstatic\s+asm\b'
        self.backup_file_path = self.file_path + '.bak'

        # Make a backup copy of the file
        shutil.copy2(self.file_path, self.backup_file_path)

        with open(self.file_path, 'r') as file:
            lines = file.readlines()

        replaced_lines = [re.sub(pattern, 'asm', line) for line in lines]

        with open(self.file_path, 'w') as file:
            file.writelines(replaced_lines)
    
    def restore_backup(self):
        shutil.move(self.backup_file_path, self.file_path)
        
    def check_function(self,line):
        # Check if there are any characters between { and }
        if re.search(r'\{.+\}', line, re.DOTALL):
            # Check if those characters are not '/* empty function */' or whitespaces or 'return True;' or 'return False;'
            if not re.search(r'\{\s*(/\*\s*empty function\s*\*/)?\s*\}', line) and not re.search(r'\{\s*return (True|False)\s*;\s*\}', line, re.IGNORECASE):
                return True
        return False
    
    def return_status(self) -> str:
        unattempted = len(self.new_not_attempted)
        attempted = len(self.attempted)
        completed = len(self.completed)

        if attempted > 0 or (unattempted > 0 and completed > 0):
            return "in progress"
        if unattempted > 0:
            return "todo"
        if completed > 0 or (completed == 0 and attempted == 0 and unattempted == 0):
            return "done"
        return "error"

    def find_includes(self,node, nonmatching: bool):
        if str(node.location.file) == self.file_path or str(node.location.file).endswith(".inc"):
            # Check if the node is a function
            if node.kind in (clang.cindex.CursorKind.FUNCTION_DECL, 
                        clang.cindex.CursorKind.CXX_METHOD, 
                        clang.cindex.CursorKind.CONSTRUCTOR, 
                        clang.cindex.CursorKind.DESTRUCTOR, 
                        clang.cindex.CursorKind.CONVERSION_FUNCTION):

                # Get the function body
                body = [token.spelling for token in node.get_tokens()]
                body_str = ' '.join(body)
                check_body_str = body_str.strip()

                # Skip if the function body doesn't exist or is empty
                if self.check_function(check_body_str):
                    LOG.debug(f"Checking function: {node.mangled_name}")

                    if asm_pattern.search(body_str):
                        if nonmatching:
                            self.new_not_attempted.append(node.mangled_name)
                        else:
                            self.not_attempted.append(node.mangled_name)
                    else:
                        if nonmatching and node.mangled_name not in self.not_attempted:
                            self.completed.append(node.mangled_name)

        # Recurse for children of this node
        for c in node.get_children():
            self.find_includes(c, nonmatching)

def run(input_filename: str) -> str:
    checker = FunctionChecker(input_filename)

    try:
        # tiny hack to get all functions to show up correctly in the AST
        checker.replace_static_asm()

        # first categorize unattempted functions
        tu = checker.index.parse(checker.file_path, checker.include_options)
        checker.find_includes(tu.cursor, False)

        # enable nonmatching functions
        checker.include_options += ['-DNONMATCHING']

        # then categorize attempted/completed functions
        tu = checker.index.parse(input_filename, checker.include_options)
        checker.find_includes(tu.cursor, True)

        checker.attempted = set(checker.not_attempted) - set(checker.new_not_attempted)

        LOG.debug(f"Not Attempted: {len(set(checker.new_not_attempted))}")
        LOG.debug(f"Attempted: {len(set(checker.attempted))}")
        LOG.debug(f"Complete: {len(set(checker.completed))}")
        LOG.debug(f"Total: {len(set(checker.new_not_attempted)) + len(set(checker.attempted)) + len(set(checker.completed))}")
        return checker.return_status()
    except Exception as e:
        print("Exception:", e)
        return e
    finally:
        checker.restore_backup()

