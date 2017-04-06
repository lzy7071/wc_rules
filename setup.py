import pip
pip.main(['install', 'git+https://github.com/KarrLab/wc_utils.git#egg=wc_utils'])

from setuptools import setup, find_packages
from wc_utils.util.install import parse_requirements, install_dependencies
import wc_rules

# parse dependencies and links from requirements.txt files
with open('requirements.txt', 'r') as file:
    install_requires, dependency_links_install = parse_requirements(file.readlines())
with open('tests/requirements.txt', 'r') as file:
    tests_require, dependency_links_tests = parse_requirements(file.readlines())
dependency_links = list(set(dependency_links_install + dependency_links_tests))

# install non-PyPI dependencies
install_dependencies(dependency_links)

# install package
setup(
    name="wc_rules",
    version=wc_rules.__version__,
    description="Language for describing whole-cell models",
    url="https://github.com/KarrLab/wc_rules",
    download_url='https://github.com/KarrLab/wc_rules/tarball/{}'.format(wc_rules.__version__),
    author="John Sekar",
    author_email="johnarul.sekar@gmail.com",
    license="MIT",
    keywords='whole-cell systems biology',
    packages=find_packages(exclude=['tests', 'tests.*']),
    package_data={},
    install_requires=install_requires,
    tests_require=tests_require,
    dependency_links=dependency_links,
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Science/Research',
        'License :: OSI Approved :: MIT License',
        'Topic :: Scientific/Engineering :: Bio-Informatics',
    ],
    entry_points={
        'console_scripts': [],
    },
)