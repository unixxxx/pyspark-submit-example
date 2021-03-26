from setuptools import setup, find_packages

setup(
    name="lib",
    version="1.0.0",
    packages=find_packages(
        exclude=["*.tests", "*.tests.*", "tests.*", "tests"])
)
