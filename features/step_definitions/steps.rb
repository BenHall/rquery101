Given /^I visit Bing\.com$/ do
  visit "http://www.bing.com"
end

When /^I search for "([^"]*)"$/ do |term|
  jquery("input[name='q']").val(term)
  jquery("input[title='Search']").click  
end

Then /^I the first result should be "([^"]*)"$/ do |title|
  first_result = jquery("div#results a:first")
  first_result.text.should include(title)
end

