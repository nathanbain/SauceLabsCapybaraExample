Given /^I have clicked "([^"]*)" time$/ do |num_clicks|
  num_clicks.to_i.times { page.find(:css, 'button[data-bind="click: registerClick, disable: hasClickedTooManyTimes"]').click }
end

When /^I open the click counter$/ do
  visit('http://knockoutjs.com/examples/clickCounter.html')
end

When /^I click$/ do
  page.find(:css, 'button[data-bind="click: registerClick, disable: hasClickedTooManyTimes"]').click
end

Then /^there should be "([^"]*)" clicks$/ do |num_clicks|
  clicks_span = page.find(:css, 'span[data-bind="text: numberOfClicks"]')
  clicks_span.text.should eql(num_clicks)
end