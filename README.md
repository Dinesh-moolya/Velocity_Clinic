The following repo holds skeletal framework for Web automation using robot framework. 

  - Pre-Requisites
  - Visual Studio Code
  - Reference Documents

# Pre-Requisites

  - Python- v3 and above.
  - Visual Studio Code
  - robotframework==3.1.2 (or latest)
  - selenium==3.141.0 (or latest)
  - robotframework-seleniumlibrary==4.3.0 (or latest)
  - Chromedriver (for latest chrome version)

# Installation Instructions
  - To install python3 (mac)
```sh
    $ brew install python3
```
  - Do I have a Python 3 installed?
```sh
    $ python --version
```
  - If not python 3.x.x, Where to find my python location
```sh
   $ which python
```
(Copy location)
```sh
export PATH= /your/python-location.
```
  - To Robot Framework
```sh
    $pip install robotframework
```
> VScode Extentions: Robot Framework Intellisense FORK

  -Command to run this Project
* Clone this project (git clone <projecturl.git>)
* Open VSCode
* Open Project in vscode -> vscode Terminal and
```sh
    $robot -d results -L Debug  -i sanity Tests
```
Find the Execution result under ../results/report.html

# Reference documents
| Ref. | README |
| ------ | ------ |
| About Robot Framework | https://robotframework.org/ |
| Robot built-in Library | https://robotframework.org/robotframework/latest/libraries/BuiltIn.html |
| Selenium Library | https://github.com/robotframework/SeleniumLibrary |
| Chrome driver | https://chromedriver.chromium.org/downloads |
