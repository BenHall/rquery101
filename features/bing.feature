Feature: Search Bing
In order to find information
As a researcher
I want to search bing
 
   Scenario: Search bing.com for jQuery
     Given I visit Bing.com
     When I search for "jQuery" 
     Then I the first result should be "jQuery: The Write Less, Do More, JavaScript Library" 
