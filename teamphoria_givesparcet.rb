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
browser.get "http://teamphoria-web-dev.elasticbeanstalk.com/"
browser.current_url
browser.title
browser.find_element(name: "email").send_keys "doug.dykstra@sparcedge.com"
browser.find_element(name: "password").send_keys "password"
browser.find_element(css: "#login-container > form > fieldset > button").click
browser.find_element(css: "#login-container > div > ul > li:nth-child(7) > a > h3").click #This for tenant selection post login
browser.find_element(css: "#vm-options > a.nav-link.nav-link-primary > span").click
sleep(10)
browser.find_element(id: "give-input-selectize").click
browser.find_element(id: "give-input-selectize").send_keys "josh.garwood"
sleep(5)
browser.find_element(id: "give-input-selectize").send_keys :tab

	#Use :enter for group as focus stays in the recipient field.

browser.find_element(name: "impactId").click
browser.find_element(css: "#fullscreen-views > div > div > form > fieldset.send-message > ol > li:nth-child(1) > select > option:nth-child(2)").click
browser.find_element(name: "coreValueId").click
browser.find_element(css: "#fullscreen-views > div > div > form > fieldset.send-message > ol > li:nth-child(2) > select > option:nth-child(3)").click

#Badge select
browser.find_element(css: "#fullscreen-views > div > div > form > fieldset.send-item > div.sparcet-wrap.silver.selected > img").click 

browser.find_element(id: "reason").send_keys "This sparcet was sent through automation"
browser.find_element(name: "thanksMessage").send_keys "Automated sparcet"
browser.find_element(css: "#fullscreen-views > div > div > form > div.actions > button.action-submit.btn.btn-primary.btn-lg").click

#wait.until(ExpectedConditions.elementToBeClickable(By.class "selectize-control"));
#/WebDriverWait wait = new WebDriverWait(webDriver, timeoutInSeconds);
#wait.until(ExpectedConditions.visibilityOfElementLocated(By.class "selectize-control"));/
#browser.find_element(link_text: "Images").click
#browser.find_elements(tag_name: "img").size

browser.close