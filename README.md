# SM-Robot-Framework
Supermarket project uses Selenium with Robot Framework for Automation testing

Link website: http://supermarket-tws.somee.com/

Setup
1. Install PyCharm and chromedriver
2. Open source (SM-Robot-Framework) by PyCharm
3. File > Settings > Project: SM-Robot-Framework > Python Interpreter
4. Click icon '+' to add Package:
    + robotframework-seleniumlibrary
	+ robotframework-datadriver
5. Go to Terminal in PyCharm to install Package:
    + pip install -U robotframework-datadriver[XLS]
6. Restart the Pycharm IDE
7. Open Terminal in IDE Pycharm to run Test Suites:
    + robot -d Results TestSuites