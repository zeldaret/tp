"""
Twilight Princess Ultimate Edition Setup GUI
Interactive setup tool for first-time build configuration
"""

import tkinter as tk
from tkinter import filedialog, messagebox, scrolledtext, font as tkfont
import os
import shutil
import subprocess
import sys
from pathlib import Path
import configparser


class SetupGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("Twilight Princess Ultimate Edition")
        self.root.geometry("800x650")
        self.root.resizable(False, False)

        # Twilight Princess color scheme (file select screen)
        self.bg_dark = "#1a1410"  # Dark brown background
        self.bg_medium = "#2d251f"  # Medium brown for panels
        self.fg_light = "#e8d4b0"  # Light tan text
        self.fg_gold = "#d4a76a"  # Gold accent
        self.border_color = "#8b7355"  # Border brown

        self.root.configure(bg=self.bg_dark)

        # Paths
        self.project_dir = Path(__file__).parent.parent.absolute()
        self.orig_dir = self.project_dir / "orig" / "GZ2E01"
        self.iso_path = None
        self.dolphin_path = None
        self.iso_output_path = self.project_dir / "build" / "GZ2E01" / "framework.iso"
        self.distro_type = None

        # Set window icon
        icon_ico = self.project_dir / "Icon.ico"
        icon_png = self.project_dir / "Icon.png"

        if sys.platform == "win32" and icon_ico.exists():
            try:
                self.root.iconbitmap(str(icon_ico))
            except Exception:
                pass

        if icon_png.exists():
            try:
                icon_image = tk.PhotoImage(file=str(icon_png))
                self.root.iconphoto(True, icon_image)
                self.icon_image = icon_image
            except Exception:
                pass

        self.create_widgets()

    def create_ornate_frame(self, parent, **kwargs):
        """Create an ornate frame with borders like TP menus"""
        outer = tk.Frame(parent, bg=self.border_color, **kwargs)
        inner = tk.Frame(outer, bg=self.bg_medium, bd=0)
        inner.pack(padx=2, pady=2, fill="both", expand=True)
        return outer, inner

    def create_widgets(self):
        # Main container
        main_frame = tk.Frame(self.root, bg=self.bg_dark)
        main_frame.pack(fill="both", expand=True, padx=20, pady=20)

        # Title with ornate styling
        title_frame = tk.Frame(main_frame, bg=self.bg_dark)
        title_frame.pack(pady=(0, 20))

        title = tk.Label(
            title_frame,
            text="~ Twilight Princess ~",
            font=("Georgia", 24, "bold"),
            fg=self.fg_gold,
            bg=self.bg_dark
        )
        title.pack()

        subtitle = tk.Label(
            title_frame,
            text="ULTIMATE EDITION",
            font=("Georgia", 14),
            fg=self.fg_light,
            bg=self.bg_dark
        )
        subtitle.pack()

        # Content area with ornate border
        content_outer, content_inner = self.create_ornate_frame(main_frame)
        content_outer.pack(fill="both", expand=True)

        # Scrollable content
        canvas = tk.Canvas(content_inner, bg=self.bg_medium, highlightthickness=0)
        scrollbar = tk.Scrollbar(content_inner, orient="vertical", command=canvas.yview)
        scrollable_frame = tk.Frame(canvas, bg=self.bg_medium)

        scrollable_frame.bind(
            "<Configure>",
            lambda e: canvas.configure(scrollregion=canvas.bbox("all"))
        )

        canvas.create_window((0, 0), window=scrollable_frame, anchor="nw")
        canvas.configure(yscrollcommand=scrollbar.set)

        canvas.pack(side="left", fill="both", expand=True, padx=10, pady=10)
        scrollbar.pack(side="right", fill="y")

        # Step 1: ISO Selection
        self.create_file_select_section(
            scrollable_frame,
            "Select Game Disc",
            "USA Version Required (GZ2E01)",
            "iso"
        )

        # Step 2: Dolphin
        self.create_file_select_section(
            scrollable_frame,
            "Dolphin Emulator",
            "Optional - Auto-launch after build",
            "dolphin"
        )

        # Step 3: Output Location
        self.create_file_select_section(
            scrollable_frame,
            "Output Location",
            f"Default: build/GZ2E01/framework.iso",
            "output"
        )

        # Build button with TP styling
        button_frame = tk.Frame(main_frame, bg=self.bg_dark)
        button_frame.pack(pady=15)

        self.build_button = tk.Button(
            button_frame,
            text="⚔ BEGIN SETUP ⚔",
            command=self.start_build,
            font=("Georgia", 14, "bold"),
            bg=self.bg_medium,
            fg=self.fg_gold,
            activebackground=self.border_color,
            activeforeground=self.fg_light,
            relief="raised",
            bd=3,
            padx=40,
            pady=15,
            state="disabled"
        )
        self.build_button.pack()

        # Log area
        log_outer, log_inner = self.create_ornate_frame(main_frame, height=120)
        log_outer.pack(fill="x", pady=(10, 0))

        tk.Label(
            log_inner,
            text="Build Log",
            font=("Georgia", 10, "bold"),
            fg=self.fg_gold,
            bg=self.bg_medium
        ).pack(anchor="w", padx=5, pady=2)

        self.log_text = scrolledtext.ScrolledText(
            log_inner,
            height=5,
            wrap=tk.WORD,
            font=("Consolas", 8),
            bg="#0f0a08",
            fg=self.fg_light,
            insertbackground=self.fg_gold
        )
        self.log_text.pack(fill="both", expand=True, padx=5, pady=(0, 5))

    def create_file_select_section(self, parent, title, subtitle, section_type):
        """Create a file selection section in TP style"""
        section_frame = tk.Frame(parent, bg=self.bg_medium)
        section_frame.pack(fill="x", pady=10, padx=15)

        # Title
        tk.Label(
            section_frame,
            text=title,
            font=("Georgia", 12, "bold"),
            fg=self.fg_gold,
            bg=self.bg_medium
        ).pack(anchor="w")

        # Subtitle
        tk.Label(
            section_frame,
            text=subtitle,
            font=("Georgia", 9),
            fg=self.fg_light,
            bg=self.bg_medium
        ).pack(anchor="w", pady=(0, 5))

        # Status label
        if section_type == "iso":
            self.iso_label = tk.Label(
                section_frame,
                text="No disc selected",
                font=("Georgia", 9),
                fg="#c45a5a",
                bg=self.bg_medium
            )
            self.iso_label.pack(anchor="w", pady=3)
        elif section_type == "dolphin":
            self.dolphin_label = tk.Label(
                section_frame,
                text="Not configured",
                font=("Georgia", 9),
                fg=self.fg_light,
                bg=self.bg_medium
            )
            self.dolphin_label.pack(anchor="w", pady=3)
        elif section_type == "output":
            self.iso_output_label = tk.Label(
                section_frame,
                text="Using default location",
                font=("Georgia", 9),
                fg=self.fg_light,
                bg=self.bg_medium
            )
            self.iso_output_label.pack(anchor="w", pady=3)

        # Button
        btn_text = {
            "iso": "Browse for Game Disc...",
            "dolphin": "Browse for Dolphin...",
            "output": "Change Output Location..."
        }[section_type]

        btn_cmd = {
            "iso": self.select_iso,
            "dolphin": self.select_dolphin,
            "output": self.select_iso_output
        }[section_type]

        tk.Button(
            section_frame,
            text=btn_text,
            command=btn_cmd,
            font=("Georgia", 10),
            bg=self.border_color,
            fg=self.fg_light,
            activebackground=self.fg_gold,
            activeforeground=self.bg_dark,
            relief="raised",
            bd=2,
            padx=15,
            pady=5
        ).pack(anchor="w", pady=5)

        # Separator
        tk.Frame(section_frame, height=1, bg=self.border_color).pack(fill="x", pady=10)

    def log(self, message):
        """Add message to log window"""
        self.log_text.insert(tk.END, message + "\n")
        self.log_text.see(tk.END)
        self.root.update()

    def select_iso(self):
        """Open file dialog to select ISO"""
        file_path = filedialog.askopenfilename(
            title="Select Twilight Princess USA ISO",
            filetypes=[
                ("Disc Images", "*.iso *.gcm *.rvz *.wia *.wbfs *.ciso *.nfs *.gcz *.tgc"),
                ("All Files", "*.*")
            ]
        )

        if file_path:
            file_size = os.path.getsize(file_path)
            if file_size < 1000000000:
                if not messagebox.askyesno(
                    "Warning",
                    f"Selected file is only {file_size / 1000000:.1f}MB.\n"
                    "This seems small for a GameCube ISO.\n\n"
                    "Gonna be a goober?"
                ):
                    return

            self.iso_path = file_path
            self.iso_label.config(
                text=f"✓ {os.path.basename(file_path)}",
                fg="#6ab04c"
            )
            self.check_ready()
            self.log(f"ISO selected: {file_path}")

    def select_dolphin(self):
        """Open file dialog to select Dolphin.exe"""
        file_path = filedialog.askopenfilename(
            title="Select Dolphin.exe",
            filetypes=[("Dolphin Emulator", "Dolphin.exe"), ("All Files", "*.*")]
        )

        if file_path:
            if not file_path.endswith("Dolphin.exe"):
                if not messagebox.askyesno(
                    "Warning",
                    "Selected file doesn't appear to be Dolphin.exe.\n\n"
                    "Continue anyway?"
                ):
                    return

            self.dolphin_path = file_path
            self.dolphin_label.config(
                text=f"✓ {os.path.basename(file_path)}",
                fg="#6ab04c"
            )
            self.log(f"Dolphin selected: {file_path}")

    def select_iso_output(self):
        """Open file dialog to select ISO output location"""
        file_path = filedialog.asksaveasfilename(
            title="Select Output ISO Location",
            defaultextension=".iso",
            filetypes=[("ISO Files", "*.iso"), ("All Files", "*.*")],
            initialdir=str(self.project_dir / "build" / "GZ2E01"),
            initialfile="framework.iso"
        )

        if file_path:
            self.iso_output_path = Path(file_path)
            try:
                rel_path = self.iso_output_path.relative_to(self.project_dir)
                display_path = str(rel_path)
            except ValueError:
                display_path = str(self.iso_output_path)

            self.iso_output_label.config(
                text=f"✓ {display_path}",
                fg="#6ab04c"
            )
            self.log(f"Output ISO path: {self.iso_output_path}")

    def check_ready(self):
        """Enable build button if ISO is selected"""
        if self.iso_path:
            self.build_button.config(state="normal", bg=self.border_color, fg=self.fg_gold)
        else:
            self.build_button.config(state="disabled", bg=self.bg_medium, fg=self.fg_light)

    def install_python_windows(self):
        """Install Python on Windows using python64.exe"""
        python_installer = self.project_dir / "python64.exe"

        if not python_installer.exists():
            self.log("✗ python64.exe not found in project directory")
            self.log("Please download Python from: https://www.python.org/downloads/")
            return False

        self.log("Launching Python installer...")
        self.log("Please complete the installation and check 'Add Python to PATH'")

        try:
            subprocess.run([str(python_installer)], check=True)
            self.log("✓ Python installer completed")
            self.log("Please restart this setup tool to continue")
            return True
        except subprocess.CalledProcessError:
            self.log("✗ Python installation failed or was cancelled")
            return False

    def install_python_linux(self):
        """Install Python on Linux based on distro type"""
        if not self.distro_type:
            distro_window = tk.Toplevel(self.root)
            distro_window.title("Select Linux Distribution")
            distro_window.geometry("300x200")
            distro_window.configure(bg=self.bg_dark)
            distro_window.transient(self.root)
            distro_window.grab_set()

            tk.Label(
                distro_window,
                text="Select your Linux distribution:",
                font=("Georgia", 11, "bold"),
                fg=self.fg_gold,
                bg=self.bg_dark
            ).pack(pady=20)

            selected_distro = tk.StringVar()

            for distro_name, distro_value in [("Debian/Ubuntu", "debian"), ("Arch Linux", "arch"), ("Fedora/RHEL", "fedora")]:
                tk.Radiobutton(
                    distro_window,
                    text=distro_name,
                    variable=selected_distro,
                    value=distro_value,
                    font=("Georgia", 10),
                    fg=self.fg_light,
                    bg=self.bg_dark,
                    selectcolor=self.bg_medium
                ).pack(anchor="w", padx=40)

            def confirm_selection():
                self.distro_type = selected_distro.get()
                distro_window.destroy()

            tk.Button(
                distro_window,
                text="Confirm",
                command=confirm_selection,
                font=("Georgia", 10),
                bg=self.border_color,
                fg=self.fg_light,
                width=15
            ).pack(pady=20)

            distro_window.wait_window()

        if not self.distro_type:
            self.log("✗ No distribution selected")
            return False

        self.log(f"Installing Python for {self.distro_type}...")

        install_commands = {
            "debian": ["sudo", "apt-get", "update", "&&", "sudo", "apt-get", "install", "-y", "python3", "python3-pip"],
            "arch": ["sudo", "pacman", "-S", "--noconfirm", "python", "python-pip"],
            "fedora": ["sudo", "dnf", "install", "-y", "python3", "python3-pip"]
        }

        cmd = install_commands.get(self.distro_type)
        if cmd:
            self.log(f"Running: {' '.join(cmd)}")
            self.log("You may be prompted for your password...")
            try:
                subprocess.run(" ".join(cmd), shell=True, check=True)
                self.log("✓ Python installed successfully")
                return True
            except subprocess.CalledProcessError:
                self.log("✗ Python installation failed")
                return False

        return False

    def check_dependencies(self):
        """Check and install required dependencies"""
        self.log("\n[1/7] Checking Python installation...")

        python_version = sys.version_info
        required_major = 3
        required_minor = 7

        if python_version.major >= required_major and python_version.minor >= required_minor:
            self.log(f"✓ Python {python_version.major}.{python_version.minor}.{python_version.micro} is installed")
        else:
            self.log(f"⚠ Warning: Python {python_version.major}.{python_version.minor} detected")
            self.log(f"Python {required_major}.{required_minor}+ is recommended")

            if sys.platform == "win32":
                if messagebox.askyesno(
                    "Python Update Required",
                    f"Python {required_major}.{required_minor}+ is required.\n\n"
                    "Would you like to install Python now?"
                ):
                    if self.install_python_windows():
                        messagebox.showinfo("Restart Required", "Please restart this setup tool after Python installation completes.")
                        self.root.quit()
                        return
            else:
                if messagebox.askyesno(
                    "Python Update Required",
                    f"Python {required_major}.{required_minor}+ is required.\n\n"
                    "Would you like to install Python now?"
                ):
                    if self.install_python_linux():
                        messagebox.showinfo("Restart Required", "Please restart this setup tool to continue.")
                        self.root.quit()
                        return

        self.log("\n[2/7] Checking pip...")
        try:
            result = subprocess.run(
                [sys.executable, "-m", "pip", "--version"],
                capture_output=True,
                text=True,
                check=True
            )
            self.log("✓ pip is available")
        except subprocess.CalledProcessError:
            self.log("⚠ Warning: pip is not available")
            self.log("Please install pip: https://pip.pypa.io/en/stable/installation/")
            return

        self.log("\n[3/7] Checking ninja...")
        try:
            subprocess.run(["ninja", "--version"], capture_output=True, check=True)
            self.log("✓ Ninja is installed")
        except (subprocess.CalledProcessError, FileNotFoundError):
            self.log("Installing ninja...")
            result = subprocess.run(
                [sys.executable, "-m", "pip", "install", "ninja"],
                capture_output=True,
                text=True
            )
            if result.returncode == 0:
                self.log("✓ Ninja installed successfully")
            else:
                self.log(f"⚠ Warning: Could not install ninja automatically\n{result.stderr}")
                self.log("Please run: pip install ninja")

        self.log("\n[4/7] Checking gclib...")
        result = subprocess.run(
            [sys.executable, "-c", "import gclib"],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            self.log("✓ gclib is installed")
        else:
            self.log("Installing gclib (this may take a minute)...")
            result = subprocess.run(
                [sys.executable, "-m", "pip", "install", "gclib[speedups] @ git+https://github.com/LagoLunatic/gclib.git"],
                capture_output=True,
                text=True
            )
            if result.returncode == 0:
                self.log("✓ gclib installed successfully")
            else:
                self.log(f"⚠ Warning: Could not install gclib automatically\n{result.stderr}")
                self.log("Please run: pip install \"gclib[speedups] @ git+https://github.com/LagoLunatic/gclib.git\"")

    def start_build(self):
        """Start the build process"""
        self.build_button.config(state="disabled")
        self.log("\n" + "="*50)
        self.log("Starting build process...")
        self.log("="*50)

        try:
            self.check_dependencies()

            self.log("\n[5/7] Creating orig/GZ2E01 directory...")
            self.orig_dir.mkdir(parents=True, exist_ok=True)
            self.log(f"✓ Directory created: {self.orig_dir}")

            self.log("\n[6/7] Copying ISO to orig/GZ2E01...")
            dest_iso = self.orig_dir / os.path.basename(self.iso_path)

            file_size = os.path.getsize(self.iso_path)
            self.log(f"Copying {file_size / 1000000:.1f}MB...")

            shutil.copy2(self.iso_path, dest_iso)
            self.log(f"✓ ISO copied to: {dest_iso}")

            self.log("\n[7/7] Updating build_tp.bat...")
            self.update_build_script()
            self.log("✓ build_tp.bat updated with ISO output path" +
                    (" and Dolphin path" if self.dolphin_path else ""))

            if self.dolphin_path:
                self.log("\nConfiguring Dolphin emulator...")
                self.configure_dolphin()

            self.log("\nRunning configure.py...")
            result = subprocess.run(
                [sys.executable, "configure.py", "--non-matching", "--map"],
                cwd=self.project_dir,
                capture_output=True,
                text=True
            )

            if result.returncode != 0:
                self.log(f"✗ configure.py failed:\n{result.stderr}")
                messagebox.showerror("Error", "configure.py failed. Check the log for details.")
                self.build_button.config(state="normal")
                return

            self.log("✓ Configuration complete")

            self.log("\nLaunching build_tp.bat...")
            self.log("This will compile the code and may take a few minutes...")

            subprocess.Popen(
                ["cmd", "/c", "start", "cmd", "/k", "build_tp.bat"],
                cwd=self.project_dir
            )

            self.log("\n" + "="*50)
            self.log("✓ Setup complete!")
            self.log("="*50)
            self.log("\nThe build script is running in a new window.")
            self.log("You can close this setup window now.")

            messagebox.showinfo(
                "Success",
                "Setup complete!\n\n"
                "The build script is running in a new window.\n"
                "Future builds can be started by simply running build_tp.bat"
            )

        except Exception as e:
            self.log(f"\n✗ Error: {str(e)}")
            messagebox.showerror("Error", f"Setup failed:\n{str(e)}")
            self.build_button.config(state="normal")

    def update_build_script(self):
        """Update build_tp.bat with the selected Dolphin path and ISO output path"""
        bat_file = self.project_dir / "build_tp.bat"

        if not bat_file.exists():
            self.log("Warning: build_tp.bat not found, skipping update")
            return

        with open(bat_file, 'r') as f:
            content = f.read()

        dolphin_path_escaped = str(self.dolphin_path).replace('/', '\\') if self.dolphin_path else None
        iso_output_escaped = str(self.iso_output_path).replace('/', '\\')

        lines = content.split('\n')
        for i, line in enumerate(lines):
            if dolphin_path_escaped and line.strip().startswith('set DOLPHIN_PATH='):
                lines[i] = f'set DOLPHIN_PATH={dolphin_path_escaped}'
            elif line.strip().startswith('set ISO_PATH='):
                lines[i] = f'set ISO_PATH={iso_output_escaped}'

        with open(bat_file, 'w') as f:
            f.write('\n'.join(lines))

    def configure_dolphin(self):
        """Configure Dolphin emulator settings for 60fps"""
        if not self.dolphin_path:
            return

        dolphin_dir = Path(self.dolphin_path).parent
        user_dir = dolphin_dir / "User"

        if not user_dir.exists():
            appdata = Path(os.environ.get('APPDATA', ''))
            user_dir = appdata / "Dolphin Emulator"

        if not user_dir.exists():
            self.log("⚠ Warning: Could not find Dolphin User directory")
            return

        self.log("Configuring Dolphin settings...")

        dolphin_ini = user_dir / "Config" / "Dolphin.ini"
        dolphin_ini.parent.mkdir(parents=True, exist_ok=True)

        config = configparser.ConfigParser()
        if dolphin_ini.exists():
            config.read(dolphin_ini)

        if 'General' not in config:
            config['General'] = {}
        config['General']['ISOPath0'] = str(self.iso_output_path.parent)

        with open(dolphin_ini, 'w') as f:
            config.write(f)

        self.log(f"✓ Set default ISO path to: {self.iso_output_path.parent}")

        game_settings_dir = user_dir / "GameSettings"
        game_settings_dir.mkdir(parents=True, exist_ok=True)
        game_ini = game_settings_dir / "GZ2E01.ini"

        game_config = configparser.ConfigParser()
        if game_ini.exists():
            game_config.read(game_ini)

        if 'Core' not in game_config:
            game_config['Core'] = {}
        game_config['Core']['OverclockEnable'] = 'True'
        game_config['Core']['Overclock'] = '2.0'

        with open(game_ini, 'w') as f:
            game_config.write(f)

        self.log("✓ Enabled CPU clock override at 200% for GZ2E01")


def main():
    root = tk.Tk()
    SetupGUI(root)
    root.mainloop()


if __name__ == "__main__":
    main()
