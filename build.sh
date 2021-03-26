rm -rf ./dist
cd src
python3 setup.py bdist_egg && mv dist ../dist
rm -rf build
rm -rf lib.egg-info
cp config.json ../dist
venv-pack -o ../dist/env.zip
cp main.py ../dist