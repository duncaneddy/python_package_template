| Testing | Coverage | Documentation |
| :-----: | :------: | :-----------: |
| [![Build Status](https://travis-ci.org/duncaneddy/python_package_template.svg?branch=master)](https://travis-ci.org/duncaneddy/python_package_template) | [![Coverage Status](https://coveralls.io/repos/github/duncaneddy/python_package_template/badge.svg?branch=master)](https://coveralls.io/github/duncaneddy/python_package_template?branch=master) | [![](https://img.shields.io/badge/docs-stable-blue.svg)](https://duncaneddy.github.io/python_package_template) |

# python_package_template
python_package_template provides an example python project template to quickly setup
continuous integration, test coverage reports, and automatic documentation deployment.

## Documentation

The documentation for the package can be found here: <https://sisl.github.io/python_package_template.jl/latest>

More example code and examples will be added as time permits.

## Package structure

To start off with, look through the package and replace `python_package_template` 
with your own project name.

`deps` contains C/C++ file dependencies of the packages which are compiled when
the package is installed by using the BinDeps.jl package.

`docs` contains Sphinx documentation which is automatically build from in-code 
comments and deployed

`python_package_template` contains the python source code of the package. This 
folder should be renamed to match your package name.

`test` contains unit tests which can be run locally

## Testing Locally

It is possible to test the package and code locally before commiting the update
and triggering a CI build. 

First, open a terminal window and navigate to the package root directory and 
navigate to the package root directory

```bash
cd /Stanford/repos/python_package_template
```

Next, install the requirements needed for testing and running the package
```bash
pip3 install -U -r requirements.txt -r test_requirements.txt
```

From here we can test the package by simply typing in the `pytest` command:
```bash
pytest
```

## Setting Up Continuous Integration

To setup continuous integration for the package we will use Travis-CI. Travis is 
free to use for open source projects (Thank you Travis!), or for build of private
repositories a subscription can be purchased.

To setup continuous integration your repository must contain a `.travis.yml` file 
AND continuous integration must be enabled for your repository on the TRAVIS CI 
webpage. This can be done either for your presonal repositories here:

`https://travis-ci.org/account/repositories`

or for your organizations' repositories here:

https://travis-ci.org/organizations/YOUR_GITHUB_ORGANIZATION_NAME/repositories

Note: If the project does not appear immediately, you may need to hit the "sync
repositories" button to have it appear.

## Setting Up Test Coverage

To set up test coverage, go to [coveralls.io](https://coveralls.io/repos/new),
login with your github account, and activate the project to add coverage reports.

Note: If the project does not appear immediately, you may need to hit the "sync
repositories" button to have it appear.

## Setting Up Documentation Deployment

To setup the automated deployment of documentation as part of the CI build process
travis-ci needs to have an access token configured be able to add the documentation.

Follow the [travis-sphinx](https://github.com/Syntaf/travis-sphinx) documentation
to setup a personal access token for travis to deploy documentation to github pages.

If you have not already done so, you also need to enable github pages as the deployment
end-point which can be done by following step 1 of the documentation for [github pages](https://pages.github.com/).

## Adding package to Python Package Repository (PyPi)

1. Make an account with the [Python Package Index](https://pypi.org/).
2. Install the travis-ci command line client so you can encrypt your PyPi account information.
3. Uncomment the relevant lines in the `.travis.yml` file
4. Encrypt your pypi.org username and password for travis by following the procedure [here](https://docs.travis-ci.com/user/encryption-keys/)
