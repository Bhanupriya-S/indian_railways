Given(/^user is on home page$/) do
  visit TrainSearch
end

When(/^user enter (.+) from search box$/) do |starting_place|
  on(TrainSearch).search_train_source starting_place
end

And(/^user enter (.+) in to search box$/) do |destination_place|
  on(TrainSearch).search_train_destination destination_place
end

And(/^user choose the journey quota as (.*) from the list$/) do |quota|
  on(TrainSearch).journey_quota quota
end

And(/^user select the (.*) from the calender$/) do |future_dat|
  on(TrainSearch).calender_details future_dat
end

And(/^user choose the class from the (.+) from the list$/) do |journey|
  on(TrainSearch).journey_class journey
end