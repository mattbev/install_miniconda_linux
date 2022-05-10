# install_miniconda_linux
A simple utility script to install miniconda on linux in one go.

## Usage
### Using `wget`
```bash
wget -O - https://raw.githubusercontent.com/mattbev/install_miniconda_linux/main/install.sh | bash
```

### Otherwise
Clone:
```bash
git clone git@github.com:mattbev/install_miniconda_linux.git
```

Change install script ownership:
```bash
cd install_miniconda_linux
chmod +x install.sh
```

Run the installation:
```bash
./install.sh
```
