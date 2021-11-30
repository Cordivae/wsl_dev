# wsl_dev
Configure a RedHat based WSL dev environment for integration with VS Code.
This includes Podman to run Docker containers, AWS cloud devops tools (CDK + Terraform), and Python Developement (pyenv + poetry)

Some key articles this is based on:  
[Python Best Practice](https://mitelman.engineering/blog/python-best-practice/automating-python-best-practices-for-a-new-project/)  
[RHWSL](https://github.com/yosukes-dev/RHWSL)  
[Podman on WSL](https://dev.to/bowmanjd/using-podman-on-windows-subsystem-for-linux-wsl-58ji)  

# Setup

1. Follow the steps in 0_wsl_setup.ps to configure RHWSL and create a user.  
2. Launch WSL, clone this repo, and run the other scripts sequentially.  

# To set up a new Python Project with VS Code:  
```
poetry new poetry-test && cd poetry-test  
pyenv install 3.9.9  
pyenv local 3.9.9  
pyenv versions  

poetry env use python  

poetry install #if existing project  

poetry shell  
python -V  
code .  
```

Bottom Right in VS Code: Select the interpreter that matches you pypoetry/virtualenv  