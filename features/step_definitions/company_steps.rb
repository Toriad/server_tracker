Given /^the following companies:$/ do |companies|
  Company.create!(companies.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) company$/ do |pos|
  visit companies_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following companies:$/ do |expected_companies_table|
  expected_companies_table.diff!(tableish('table tr', 'td,th'))
end
