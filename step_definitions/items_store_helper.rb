# def get_energy_refill_from_items_store
#   get_item_from_items_store(5)
# end
#
# def get_health_potion_from_items_store
#   get_item_from_items_store(4)
# end
#
# def get_team_health_potion_from_items_store
#   get_item_from_items_store(3)
# end
#
# def get_revive_from_items_store
#   get_item_from_items_store(2)
# end
#
# def get_team_revive_from_items_store
#   get_item_from_items_store(1)
# end

def get_energy_refill_get_now_button_from_items_store
  get_get_now_buttons_from_items_store(5)
end

# def get_health_potion_get_now_button_from_items_store
#   get_get_now_buttons_from_items_store(4)
# end
#
# def get_team_health_potion_get_now_button_from_items_store
#   get_get_now_buttons_from_items_store(3)
# end
#
# def get_revive_get_now_button_from_items_store
#   get_get_now_buttons_from_items_store(2)
# end
#
# def get_team_revive_get_now_button_from_items_store
#   get_get_now_buttons_from_items_store(1)
# end


# def get_current_owned_number_of_energy_refill_item
#   get_energy_refill_from_items_store["text00"].sub("Owned: ", "").to_i
# end
#
# def get_current_owned_number_of_health_potion_item
#   get_health_potion_from_items_store["text00"].sub("Owned: ", "").to_i
# end
#
# def get_current_owned_number_of_team_revive_item
#   get_team_revive_from_items_store["text00"].sub("Owned: ", "").to_i
# end


And(/^I wait items to present on screen in items store$/) do
  wait_for_game_object_present_on_screen("StoreItem(Clone)")
end

# And(/^click get energy refill now button$/) do
#   touch_items_store_get_now_button_by_index(5)
# end
#
# And(/^click get health potion now button$/) do
#   touch_items_store_get_now_button_by_index(4)
# end
#
# And(/^click get team revive now button$/) do
#   touch_items_store_get_now_button_by_index(1)
# end


Then(/^I should get purchase confirmation popup$/) do
  wait_for_game_object_present_on_screen("ConfirmationPopup")
end

And(/^I close the confirmation popup$/) do
  wait_and_touch_ios_device("CloseButton")
end


# And(/^I should own (\d+) energy refill item$/) do |arg|
#   assert (arg.to_i).eql?(get_current_owned_number_of_energy_refill_item.to_i)
# end
#
# And(/^I should own (\d+) health potion item$/) do |arg|
#   assert (arg.to_i).eql?(get_current_owned_number_of_health_potion_item.to_i)
# end
#
# And(/^I should own (\d+) team revive item$/) do |arg|
#   assert (arg.to_i).eql?(get_current_owned_number_of_team_revive_item.to_i)
# end


Given(/^I swipe to left in items store$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.98, y:0.26}, endOffset:{x:0.38, y:0.26}})]})
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.98, y:0.26}, endOffset:{x:0.38, y:0.26}})]})
end

And(/^I should see the following items on screen$/) do |table|
  # table is a table.hashes.keys # => [:item_name, :Order_from_the_Rright_of_the_screen, :Price]
  @@items = table
  @@items.hashes.each do |row|
    item_index = row[:Order_from_the_right_of_the_screen]
    expected_item_name = row[:Name]
    expected_item_price = row[:Price]
    expected_item_count = row[:Count]
    actual_item_name = get_item_name(item_index)
    actual_item_price = get_item_price(item_index)
    actual_item_count = get_item_count(item_index)
    assert_equal(expected_item_name, actual_item_name)
    assert_equal(expected_item_price, actual_item_price)
    assert_equal(expected_item_count, actual_item_count)
  end
end

And(/^I click get "([^"]*)" now button$/) do |arg|
  item_index = 0
  log @@items
  @@items.hashes.each do |row|
    if row[:Name] == arg
      item_index = row[:Order_from_the_right_of_the_screen]
    end
  end
  log item_index
  touch_items_store_get_now_button_by_index(item_index)
end

private

def get_item_from_items_store(index)
  get_one_object_from_the_same_name_objects_by_index("StoreItem(Clone)", index)
end

def get_item_name(index)
  get_item_from_items_store(index)["text04"]
end

def get_item_price(index)
  get_item_from_items_store(index)["text02"]
end

def get_item_count(index)
  get_item_from_items_store(index)["text00"].sub("Owned: ", "")
end

def get_get_now_buttons_from_items_store(index)
  get_one_object_from_the_same_name_objects_by_index("BuyButton", index)
end

def touch_items_store_get_now_button_by_index(button_index)
  button = get_get_now_buttons_from_items_store(button_index)
  x = button["x"].to_i
  y = button["y"].to_i
  case TARGET_DEVICE
    when "ipad_3"
      x = x/2
      y = (y/2 - 768).abs
      #touch(nil, :offset => {:x => x, :y => y})
      uia_tap_offset("{:x #{x}, :y #{y}}")
    when "ipad_2"
      p "touch on ipad 2!"
      #touch(nil, :offset => {:x => (y.to_i), :y => (x.to_i)})
      uia_tap_offset("{:x #{y}, :y #{x}}")
  end
end