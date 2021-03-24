build:
	rm -rf ./dist 
	mkdir dist
	cp ./src/main.py ./dist
	cp ./src/config.json ./dist
	cd src && zip -r ../dist/jobs.zip jobs
	cd src && zip -r ../dist/shared.zip shared
	pipenv lock -r > ./dist/requirements.txt
	pipenv run pip install -r ./dist/requirements.txt --target ./dist/libs
	cd ./dist/libs && zip -r -D ../libs.zip . && cd ../ && rm -rf libs