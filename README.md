# WCF QA Robot

## Installation

This setup assumes that you want to use pyenv to handle python versioning and virtual environments.
This will create a virtual environment using Python 3.7.3 and isolate it for this repo:

```
brew install pyenv
brew install pyenv-virtualenv
pyenv install 3.7.3
pyenv local 3.7.3
pyenv virtualenv wcf_qa
pyenv activate wcf_qa
pip install robotframework
pip install robotframework-selenium2library
pip install robotframework-debuglibrary
```

### Update driver
I was using Chrome to test. The error that I received was:

```
SessionNotCreatedException: Message: session not created: Chrome version must be between 71 and 75
  (Driver info: chromedriver=2.46.628411 (3324f4c8be9ff2f70a05a30ebc72ffb013e1a71e),platform=Mac OS X 10.14.6 x86_64)
```

So updating the driver was as simple as downloading and installing the driver.
https://selenium-python.readthedocs.io/installation.html#drivers

On the mac once you download the new driver you just unzip it and move it to `/usr/local/bin/`

## Debugging
https://github.com/xyb/robotframework-debuglibrary

## Resources
- https://robotframework.org/
- http://robotframework.org/Selenium2Library/Selenium2Library.html
- https://robotframework.org/robotframework/latest/libraries/BuiltIn.html
- http://randomvin.com/
