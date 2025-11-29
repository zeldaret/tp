#!/usr/bin/env python3
"""
Twilight Princess Decompilation Build Script
This script automates the process of building a modified ISO from the decompilation.
"""

import argparse
import subprocess
import sys
import shutil
from pathlib import Path


def run_command(cmd, description):
    """Run a command and handle errors."""
    print(f"\n{'='*60}")
    print(f"{description}")
    print(f"{'='*60}")
    print(f"Running: {' '.join(str(c) for c in cmd)}")
    print()

    result = subprocess.run(cmd, shell=True)

    if result.returncode != 0:
        print(f"\nERROR: {description} failed with code {result.returncode}")
        sys.exit(1)

    return result


def select_iso_file():
    """Prompt user to select an ISO file using a file dialog."""
    try:
        import tkinter as tk
        from tkinter import filedialog

        root = tk.Tk()
        root.withdraw()  # Hide the main window

        iso_path = filedialog.askopenfilename(
            title="Select Twilight Princess ISO",
            filetypes=[
                ("ISO Files", "*.iso *.gcm"),
                ("All Files", "*.*")
            ]
        )

        root.destroy()

        if iso_path:
            return Path(iso_path)
        else:
            return None

    except ImportError:
        print("ERROR: tkinter not available. Please install it or provide ISO path manually.")
        print("Install with: pip install tk")
        return None


def main():
    parser = argparse.ArgumentParser(
        description="Build a modified Twilight Princess ISO from the decompilation"
    )
    parser.add_argument(
        "--output",
        "-o",
        type=Path,
        default=None,
        help="Path where the modified ISO will be created (default: output_iso/modified.iso)"
    )
    parser.add_argument(
        "--vanilla-iso",
        type=Path,
        default=None,
        help="Path to your vanilla Twilight Princess ISO (optional, will use file dialog if not provided)"
    )
    parser.add_argument(
        "--no-configure",
        action="store_true",
        help="Skip the configure step (use if already configured)"
    )
    parser.add_argument(
        "--matching",
        action="store_true",
        help="Build with matching mode (default is non-matching)"
    )

    args = parser.parse_args()

    # Get decomp repo path (current directory)
    decomp_path = Path(__file__).parent.resolve()

    # Set vanilla ISO path
    baserom_path = decomp_path / "orig" / "GZ2E01" / "baserom.iso"

    # Set output path
    if args.output is None:
        output_iso = decomp_path / "output_iso" / "modified.iso"
    else:
        output_iso = args.output

    print("="*60)
    print("Twilight Princess ISO Build Script")
    print("="*60)
    print()

    # Check if baserom.iso exists
    if not baserom_path.exists():
        print(f"Vanilla ISO not found at: {baserom_path}")
        print()

        # Check if vanilla ISO was provided as argument
        if args.vanilla_iso:
            selected_iso = args.vanilla_iso
            if not selected_iso.exists():
                print(f"ERROR: Provided ISO not found at: {selected_iso}")
                sys.exit(1)
        else:
            print("Please select your Twilight Princess ISO file...")
            print()
            selected_iso = select_iso_file()

            if selected_iso is None:
                print("ERROR: No ISO file selected. Exiting.")
                sys.exit(1)

        print(f"Selected: {selected_iso}")
        print()
        print(f"Copying ISO to {baserom_path}...")

        # Create directory if it doesn't exist
        baserom_path.parent.mkdir(parents=True, exist_ok=True)

        # Copy the selected ISO
        try:
            shutil.copy2(selected_iso, baserom_path)
            print("ISO copied successfully!")
            print()
        except Exception as e:
            print(f"ERROR: Failed to copy ISO: {e}")
            sys.exit(1)
    else:
        print(f"Using existing vanilla ISO: {baserom_path}")
        print()

    # Create output directory if it doesn't exist
    output_iso.parent.mkdir(parents=True, exist_ok=True)

    print(f"Output ISO will be: {output_iso}")
    print()

    # Step 1: Configure
    if not args.no_configure:
        configure_cmd = ["python", "configure.py"]
        if not args.matching:
            configure_cmd.extend(["--non-matching", "--map"])
        run_command(configure_cmd, "Step 1/3: Configuring build")
    else:
        print("\nSkipping configure step as requested")

    # Step 2: Build with ninja
    run_command(["ninja"], "Step 2/3: Building with ninja")

    # Step 3: Build ISO
    rebuild_cmd = [
        "python",
        str(decomp_path / "tools" / "rebuild-decomp-tp.py"),
        str(baserom_path),
        str(output_iso),
        str(decomp_path)
    ]
    run_command(rebuild_cmd, "Step 3/3: Building ISO")

    print("\n" + "="*60)
    print("Build completed successfully!")
    print("="*60)
    print(f"Your modified ISO is ready at: {output_iso}")
    print()


if __name__ == "__main__":
    main()
