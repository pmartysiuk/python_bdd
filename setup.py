# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

setup(
    name='REST api tests',
    version='0.0.1',
    description='REST api tests',
    long_description=readme,
    author='Pavel Martysiuk',
    author_email='pmartysiuk@gmail.com',
    license=license,
    packages=find_packages(exclude=('tests', 'docs'))
)

