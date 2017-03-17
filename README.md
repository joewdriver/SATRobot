Robot documentation here:

http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

https://github.com/robotframework/QuickStartGuide

Excellent getting started tutorial here:

http://www.swtestacademy.com/getting-started-robotframework/

The basics:

You'll need to install python and pip.  This project should work with any version of python.  However if we intend to test
using selenium in the future, we'll have to work in python 2.7, at least until they get caught up to python 3

You'll also need robot
pip install robotframework

If using PyCharm, there is a plugin available for robotFramework, search Robot in the plugins directory and it should come right up

Once you've got everything installed, you should be able to run the test_cases file right away:

robot test_cases.robot