/class name			:class_name			:class
css selector		:css	 
id					:id	 
link text			:link_text			:link
name				:name	 
partial link text	:partial_link_text	 
tag name			:tag_name	 
xpath				:xpath/

#http://watirwebdriver.com/sending-special-keys/

#This will test all sparcet actions; liking, commenting, print dialog, opening, closing, actions while on feed or full detail view.

require "selenium-webdriver"
 browser = Selenium::WebDriver.for :firefox
  browser.get "http://teamphoria-web-dev.elasticbeanstalk.com/"
  #browser.window.resize_to(1680,1050)
   browser.current_url
	browser.title

	#Login screen
			browser.find_element(name: "email").send_keys "sparcet4@gmail.com"
			 browser.find_element(name: "password").send_keys "P@55word1"
			  browser.find_element(css: "#login-container > form > fieldset > button").click

	#Click on Sparcet Expand icon from feed to view full detail
			sleep(5)
			browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[1]/a[1]/i").click

	#Close the full detail view; top, right close button
			sleep(15)
			browser.find_element(xpath: "//*[@id='fullscreen-views']/div/header/div[2]/a/i").click

	#Click on Sparcet Expand icon from feed to view full detail
			sleep(5)
			browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[1]/a[1]/i").click	

	#Close the full detail view via Cancel button at the bottom.
			sleep(8)
			browser.find_element(xpath: "//*[@id='comments']/form/div/div/div/button[2]").click

	#Click on Sparcet Expand icon from feed to view full detail
			sleep(5)
			browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[1]/a[1]/i").click

	#Click the Likes Button on full detail
			browser.find_element(xpath: "//*[@id='fullscreen-views']/div/div/div[2]/div[1]/a/i").click

	#Click the print button and print sparcet
			browser.find_element(xpath: "//*[@id='fullscreen-views']/div/div/div[2]/div[2]/a/i").click
			 browser.find_element(id: "destination-search").send_keys :enter

	#Click Tell button and enters an email to share with
			browser.find_element(xpath: "//*[@id='fullscreen-views']/div/div/div[3]/ul/li[2]/a/i").click
			 browser.find_element(xpath: "//*[@id='tell']/form/fieldset[1]/div/div/div[1]").send_keys "josh.garwood"
			  browser.find_element(id: "share-message").send_keys "This Sparcet share is done through automation"

	#Add a Sparcet comment
			browser.find_element(xpath: "//*[@id='comments']/form/div/div/textarea").send_keys "This Sparcet comment was added through automation"
			 browser.find_element(xpath: "//*[@id='comments']/form/div/div/div/button[1]"). click

	#Close the full detail view; top, right close button
			browser.find_element(xpath: "//*[@id='fullscreen-views']/div/header/div[2]/a/i").click

	#Likes and comments on Sparcet from the feed
			browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[3]/div[1]/a[1]/span[1]").click
			 browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[3]/div[2]/p/a").click
			  browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[3]/div[2]/form/div/div/textarea").click
			   browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[3]/div[2]/form/div/div/textarea").send_keys "This comment was added through automation"
			    browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[3]/div[2]/form/div/div/div/button[1]").click

	#Share Sparcet from feed
			browser.find_element(xpath: "//*[@id='vm-list']/div[1]/div[3]/div[1]/a[2]/span[1]").click
			 browser.find_element(xpath: "//*[@id='fullscreen-views']/div[2]/div/div/form/fieldset[1]/div/div/div[1]").click
			  browser.find_element(xpath: "//*[@id='fullscreen-views']/div[2]/div/div/form/fieldset[1]/div/div/div[1]").send_keys "josh.garwood"
			   browser.find_element(xpath: "//*[@id='fullscreen-views']/div[2]/div/div/form/fieldset[1]/div/div/div[1]").send_keys :tab
			    browser.find_element(id: "share-message").send_keys "This Sparcet shared was done through automation"
			     browser.find_element(xpath: "//*[@id='fullscreen-views']/div[2]/div/div/form/div/button[2]").click

browser.close