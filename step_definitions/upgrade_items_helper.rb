And(/^I should see GetMore prompt$/) do
  wait_for_game_object_present_on_screen("GetMore")
end

And(/^I click Get More button on GetMore prompt$/) do
  wait_and_touch_ios_device("GetMoreButton", wait_before_click:5)
end


And(/^I click Sell Champions button on GetMore prompt$/) do
  wait_and_touch_ios_device("SellChampionsButton", wait_before_click:5)
end