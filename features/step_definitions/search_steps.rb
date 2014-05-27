When /^I search for "([^"]*)"$/ do |query|
  visit "/search"
  fill_in "query", with: query
  click_button "Search"
end

When /^I enter "([^"]*)" in the search field$/ do |query|
  visit "/search"
  fill_in "query", with: query
end

Then /^the results are:$/ do |expected_results|
  results = [['content']] + page.all('ol.results li').map do |li|
    [li.text]
  end

  expected_results.diff! results
end
