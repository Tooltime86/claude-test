#!/usr/bin/env python3
"""
Pwnagotchi name support - A simple script for managing Pwnagotchi device names
"""
import os

def get_pwnagotchi_name():
    """Get the pwnagotchi device name from environment or use default"""
    return os.environ.get('PWNAGOTCHI_NAME', 'jay felony')

def main():
    """Main function to display pwnagotchi greeting"""
    name = get_pwnagotchi_name()
    print(f'Hello from {name} on the Pi')
    print(f'Pwnagotchi name: {name}')

if __name__ == '__main__':
    main()
