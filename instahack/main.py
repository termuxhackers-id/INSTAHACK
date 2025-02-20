import os
import sys
import subprocess
import pkg_resources

def main():
    ihack_path = pkg_resources.resource_filename('instahack', 'ihack')
    if not os.access(ihack_path, os.X_OK):
        os.chmod(ihack_path, 0o755)
    sys.exit(subprocess.call([ihack_path] + sys.argv[1:]))

if __name__ == '__main__':
    main()