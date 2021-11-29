curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py > get-poetry.py
python get-poetry.py --uninstall
python get-poetry.py
rm get-poetry.py

echo 'source $HOME/.poetry/env' >> .bashrc

