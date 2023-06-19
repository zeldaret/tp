#!/usr/bin/env python3
import argparse
import json
import os
import subprocess
from pprint import pprint

import requests


def get_git_commit_timestamp() -> int:
    return int(subprocess.check_output(['git', 'show', '-s', '--format=%ct']).decode('ascii').rstrip())


def get_git_commit_sha() -> str:
    return subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('ascii').strip()


def generate_url(args: argparse.Namespace) -> str:
    url_components = [args.base_url.rstrip('/'), 'data']

    for arg in [args.project, args.version.replace('.', '-')]:
        if arg != "":
            url_components.append(arg)

    return str.join('/', url_components) + '/'


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Upload progress information.")
    parser.add_argument("-b", "--base_url", help="API base URL", required=True)
    parser.add_argument("-a", "--api_key", help="API key (env var PROGRESS_API_KEY)")
    parser.add_argument("-p", "--project", help="Project slug", required=True)
    parser.add_argument("-v", "--version", help="Version slug", required=True)
    parser.add_argument("input", help="Progress JSON input")

    args = parser.parse_args()
    api_key = args.api_key or os.environ.get("PROGRESS_API_KEY")
    if not api_key:
        raise "API key required"
    url = generate_url(args)

    entries = []
    with open(args.input, "r") as f:
        data = json.load(f)
        entries.append({
            "timestamp": get_git_commit_timestamp(),
            "git_hash": get_git_commit_sha(),
            "categories": {
                "default": data,
            },
        })

    print("Publishing entries to", url)
    pprint(entries)
    data = {
        "api_key": api_key,
        "entries": entries,
    }
    r = requests.post(url, json=data)
    r.raise_for_status()
    print("Done!")