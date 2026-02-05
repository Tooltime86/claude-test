# Claude MCP Test

## Pwnagotchi Name Support

This repository contains a simple Python script that demonstrates Pwnagotchi device name support.

### Usage

Run the script with the default name "jay felony":
```bash
python3 main.py
```

Or set a custom name using the `PWNAGOTCHI_NAME` environment variable:
```bash
PWNAGOTCHI_NAME="your custom name" python3 main.py
```

### Output

The script will display:
- A personalized greeting including the Pwnagotchi name
- The configured Pwnagotchi name

Example:
```
Hello from jay felony on the Pi
Pwnagotchi name: jay felony
```
