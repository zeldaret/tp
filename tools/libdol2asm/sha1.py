import hashlib

class SHA1MatchException(Exception):
    ...


def sha1_check(path, data, expected):
    """
    Check if the SHA1 checksum of the 'data' is equal to the 'expected' checksum.
    If the checksum does not match, an exception is raised.
    """

    sha1 = hashlib.sha1()
    sha1.update(data)

    current = sha1.hexdigest().upper()
    if current != expected:
        raise SHA1MatchException(f"SHA1 checksum is not matching for '{path}'.\n'{current}'\n'{expected}'")
