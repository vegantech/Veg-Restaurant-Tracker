Given /^a restaurant named "([^\"]*)"$/ do |arg1|
    Restaurant.create(:name => arg1)
end

Then /^"([^\"]*)" should have 1 visit recorded with a timestamp$/ do |arg1|
    Restaurant.find_by_name(arg1).visits.count.should == 1
end




