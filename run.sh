#!/bin/bash
spark-submit --py-files lib-1.0.0-py3.8.egg --files config.json --archives env.zip main.py --job $1