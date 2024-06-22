# devenv_python_data_science_example

# Setup 
1. First setup devenv and direnv on your computer 
2. `git clone https://github.com/abelREK/devenv_python_data_science_example`
3. `direnv allow`

# Adding more libraries 
1. First check [Nix Packages](https://search.nixos.org/packages) if the nix version of the package exists. 
2. If it does you should install that over the pip one. Search using python "name of library". Use the python 3.11 version. 
3. Add the package to your packages array in the devenv.nix file.  
4. If the package does not exist install the pip version by adding the name of the library to your requirements.txt file on a new line.
5. You may have to use the command `direnv reload` for the change to kick in. 
6. Enjoy your python virtual environment. 
7. For more information on devenv visit [Devenv Docs](https://devenv.sh/getting-started/)

# Copying Over to another project 
1. Run `devenv init` in the new project folder. 
2. Copy over the devenv.nix, devenv.yaml, and requirements.txt.

