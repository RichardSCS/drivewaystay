require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
When /^I am on the (.+)$/ do |page_name|
  visit path_to(page_name)
end
