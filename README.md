# wsl_dev
Configure a WSL based dev environment.

Some key articles this is based on:
https://mitelman.engineering/blog/python-best-practice/automating-python-best-practices-for-a-new-project/

To use with VS Code:
poetry new poetry-test && cd poetry-test
#pyenv install 3.9.9
pyenv local 3.9.9
pyenv versions

poetry env use python

poetry install #if existing project

poetry shell
python -V
code .

#Select the interpreter that matches you pypoetry/virtualenv