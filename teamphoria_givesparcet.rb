/class name			:class_name			:class
css selector		:css	 
id					:id	 
link text			:link_text			:link
name				:name	 
partial link text	:partial_link_text	 
tag name			:tag_name	 
xpath				:xpath/

require "selenium-webdriver"
browser = Selenium::WebDriver.for :firefox
browser.get "http://ui-dev.teamphoria.com/login"
browser.current_url
#browser.find_element(link_text: "Images").click
browser.title
browser.find_element(name: "email").send_keys "doug.dykstra@sparcedge.com"
browser.find_element(name: "password").send_keys "password1"
browser.find_element(css: "#login-container > form > fieldset > button").click
browser.find_element(css: "#login-container > div > ul > li:nth-child(6) > a > h3").click
browser.find_element(css: "#vm-options > a.nav-link.nav-link-primary > span").click
#browser.find_elements(tag_name: "img").size
browser.close