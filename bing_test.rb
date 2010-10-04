$:.unshift(File.dirname(__FILE__) + '/rquery/lib')
require 'rquery'

module RQuery
  describe Browser, "connected to the web" do
    include BrowserDsl

    it "finds jquery documentation" do
      visit "http://www.bing.com"
      title.should include("Bing")
      html.should include("Bing")
      jquery("input[name='q']").val("jquery")
      jquery("input[name='q']").val.should == "jquery"
      jquery("input[title='Search']").click  
      first_result = jquery("div#results a:contains('jQuery'):first")
      first_result.text.should include("Write Less, Do More")
      first_result.click
      title.should include("Write Less, Do More")
      jquery("a:contains('Documentation')").first.click
      jquery("h1.firstHeading").text.should == "Main Page"
      jquery("img:first").attr("src").should =~ /jquery/
      jquery("img").eq(0).attr("src").should =~ /jquery/
      jquery("#jq-primarySearch").val("selectors")
      jquery("#jq-searchGoButton").click
      jquery("a:contains('Attribute Ends With')").length.should == 1
    end
  end
end
