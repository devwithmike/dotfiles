import os, sys
from selenium import webdriver

path = "/home/mike/projects_lnx/"
browser = webdriver.Chrome("/home/mike/chromedriver")
browser.get('https://github.com/login')

def create():
	folderName = str(sys.argv[1])
	os.makedirs(path + folderName)
	python_button =  browser.find_elements_by_xpath("//*[@id='login_field']")[0]
	python_button.send_keys('MikeFMeyer')
	python_button =  browser.find_elements_by_xpath("//*[@id='password']")[0]
	python_button.send_keys(sys.argv[2])
	python_button =  browser.find_elements_by_xpath("//input[@name='commit']")[0]
	python_button.click()
	browser.get('https://github.com/new')
	python_button = browser.find_elements_by_xpath("//*[@id="repository_name"]")
	python_button.send_keys(folderName)
	python_button = browser.find_elements_by_css_selector("#new_repository > div.js-with-permission-fields > button")
	python_button.submit()
	
if __name__ == '__main__':
	create()

