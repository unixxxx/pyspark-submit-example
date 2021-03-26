[install make utility on windows](https://stackoverflow.com/questions/32127524/how-to-install-and-use-make-in-windows)

using Makefile
- `pipenv shell`
- `pipenv install`
- `make`
- `cd dist`
- `spark-submit --py-files jobs.zip,libs.zip,shared.zip --files config.json main.py --job movies`
- `spark-submit --py-files jobs.zip,libs.zip,shared.zip --files config.json main.py --job movie_genres`

using build.sh
- `pipenv shell`
- `pipenv install`
- `./build.sh`
- `cd dist`
- `spark-submit --py-files lib-1.0.0-py3.8.egg --files config.json --archives env.zip main.py --job word_count`

