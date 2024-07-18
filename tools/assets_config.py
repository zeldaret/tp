import curses
from sys import argv
import json
from os import path

CONFIG_DESCRIPTIONS = {
    "decompress_assets": "Decompress Yaz0 compressed assets (appends .c to the filename)",
    "extract_arc": "Extract archive (.arc) files",
    "convert_stages": "Convert Stage Files (.dzs and .dzr) to json",
    "convert_textures": "Convert Textures (.bti) to png",
    "update_copydate": "Update COPYDATE on build",
    "package_maps": "Package Symbol Map (.map) files on build",
}

CONFIG_DEFAULTS = {
    "decompress_assets": True,
    "extract_arc": True,
    "convert_stages": True,
    "convert_textures": False,
    "update_copydate": True,
    "package_maps": True,
}

CONFIGFILE_DEFAULT = "asset_config.json"


def printMenu(stdscr, selected_idx, options):
    stdscr.clear()
    height, width = stdscr.getmaxyx()

    left = min([(width // 2) - (len(option) // 2) for option in options])
    top = (height // 2) - (len(options) // 2)

    stdscr.addstr(top - 2, left, "Configure Asset Extraction/Packaging (q to save):")

    for idx, option in enumerate(options):
        x = left
        y = top + idx

        if idx == selected_idx:
            stdscr.attron(curses.color_pair(1))
            stdscr.addstr(y, x, option)
            stdscr.attroff(curses.color_pair(1))
        else:
            stdscr.addstr(y, x, option)

    stdscr.refresh()


def cursesMenu(stdscr, values):
    curses.curs_set(0)
    curses.init_pair(1, curses.COLOR_BLACK, curses.COLOR_WHITE)

    keys = list(values.keys())
    options = [
        f"{CONFIG_DESCRIPTIONS[key]}: ({"X" if values[key] else " "})" for key in keys
    ]
    bool_values = [values[key] for key in keys]

    selected_idx = 0

    while True:
        printMenu(stdscr, selected_idx, options)

        key = stdscr.getch()

        if key == curses.KEY_UP and selected_idx > 0:
            selected_idx -= 1
        elif key == curses.KEY_DOWN and selected_idx < len(options) - 1:
            selected_idx += 1
        elif key in (curses.KEY_ENTER, ord("\n"), 13):
            bool_values[selected_idx] = not bool_values[selected_idx]
            options[selected_idx] = (
                f"{CONFIG_DESCRIPTIONS[keys[selected_idx]]}: ({"X" if bool_values[selected_idx] else " "})"
            )
        elif key in (27, ord("q")):  # Escape, q
            break

    return {key: value for key, value in zip(keys, bool_values)}


def saveConfig(values, configfile=CONFIGFILE_DEFAULT):
    with open(configfile, "w") as f:
        json.dump(values, f)


def updateConfig(configfile=CONFIGFILE_DEFAULT):
    values = getConfig(configfile)

    values = curses.wrapper(cursesMenu, values)
    saveConfig(values, configfile)
    return values


def getConfig(configfile=CONFIGFILE_DEFAULT, update=False):
    values = CONFIG_DEFAULTS

    if path.exists(configfile):
        with open(configfile, "r") as f:
            config = json.load(f)
            for key, value in config.items():
                if key in CONFIG_DEFAULTS:
                    values[key] = value
    elif update == True:
        values = updateConfig(configfile)

    return values


def main():
    if len(argv) < 2:
        print(f"{argv[0]} Usage: python3 {argv[0]} asset_config.json")
        exit(1)

    updateConfig(argv[1])


if __name__ == "__main__":
    main()
