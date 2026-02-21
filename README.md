# Claude MCP Test

## Install Ollama on Raspberry Pi 5

[Ollama](https://ollama.com) lets you run large language models locally. The Raspberry Pi 5 uses an **ARM64 (aarch64)** CPU, which Ollama supports out of the box.

### Quick install

```bash
# Make the script executable, then run it
chmod +x install_ollama.sh
./install_ollama.sh
```

The script will:
1. Verify you are on an ARM64 system.
2. Install `curl` if it is not already present.
3. Download and run the official Ollama installer from <https://ollama.com/install.sh>.
4. Print useful commands to pull and run models once the install is done.

### Manual one-liner

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

> **Security note:** Both the script and the one-liner above execute code downloaded from the internet.
> Review <https://ollama.com/install.sh> first if you prefer to audit the installer before running it.

### Usage after installation

```bash
# Pull a lightweight model suited for Pi 5 hardware
ollama pull tinyllama

# Chat interactively
ollama run tinyllama

# Check the background service
sudo systemctl status ollama
```

> **Tip:** Models with 1–3 B parameters (e.g. `tinyllama`, `phi3:mini`) work well on the Pi 5's 8 GB RAM.
