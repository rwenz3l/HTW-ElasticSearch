# Install brew (on macOS)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Add venv + python3
brew install virtualenv
brew install python3

# Create VirtualEnv
mkdir -p ./elastic && cd ./elastic
virtualenv venv --python=python3
. venv/bin/activate

# Install Notebook
pip install jupyter notebook

# Install BASH
pip install bash_kernel

# Register Kernel
python -m bash_kernel.install

# Start the Notebook
# screen
# -d -m 
# => Start  screen  in  "detached"  mode.
# -S sessionname
# => this option can be used to specify a meaningful name  for the session.
screen -d -m -S notebook jupyter notebook

# goto http://localhost:8888
