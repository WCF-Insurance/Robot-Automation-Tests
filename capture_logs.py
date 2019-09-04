from robot.libraries.BuiltIn import BuiltIn


def get_selenium_browser_log():
    selib = BuiltIn().get_library_instance('Selenium2Library')
    return selib.driver.get_log('browser')


def get_last_browser_log():
    full_log = get_selenium_browser_log()
    if full_log:
        return full_log[-1]
    else:
        return {}
