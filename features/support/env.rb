$:.unshift(File.dirname(__FILE__) + '/../../rquery/lib')
require 'rquery'

World do
  include RQuery::BrowserDsl
end
