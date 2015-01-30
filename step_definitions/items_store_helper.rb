def get_energy_refill_from_items_store
  get_item_from_items_store(5)
end

def get_health_potion_from_items_store
  get_item_from_items_store(4)
end

def get_team_health_potion_from_items_store
  get_item_from_items_store(3)
end

def get_revive_from_items_store
  get_item_from_items_store(2)
end

def get_team_revive_from_items_store
  get_item_from_items_store(1)
end

def get_energy_refill_get_now_button_from_items_store
  get_get_now_buttons_from_items_store(5)
end

def get_health_potion_get_now_button_from_items_store
  get_get_now_buttons_from_items_store(4)
end

def get_team_health_potion_get_now_button_from_items_store
  get_get_now_buttons_from_items_store(3)
end

def get_revive_get_now_button_from_items_store
  get_get_now_buttons_from_items_store(2)
end

def get_team_revive_get_now_button_from_items_store
  get_get_now_buttons_from_items_store(1)
end


def get_current_owned_number_of_energy_refill_item
  get_energy_refill_from_items_store["text00"].sub("Owned: ", "").to_i
end

def get_current_owned_number_of_health_potion_item
  get_health_potion_from_items_store["text00"].sub("Owned: ", "").to_i
end

def get_current_owned_number_of_team_revive_item
  get_team_revive_from_items_store["text00"].sub("Owned: ", "").to_i
end


And(/^I wait items to present on screen in items store$/) do
  wait_for_game_object_present_on_screen("StoreItem(Clone)")
end

And(/^click get energy refill now button$/) do
  touch_items_store_get_now_button_by_index(5)
end

And(/^click get health potion now button$/) do
  touch_items_store_get_now_button_by_index(4)
end

And(/^click get team revive now button$/) do
  touch_items_store_get_now_button_by_index(1)
end


Then(/^I should get purchase confirmation popup$/) do
  wait_for_game_object_present_on_screen("ConfirmationPopup")
end

And(/^I close the confirmation popup$/) do
  wait_and_touch_ios_device("CloseButton")
end


And(/^I should own (\d+) energy refill item$/) do |arg|
  assert (arg.to_i).eql?(get_current_owned_number_of_energy_refill_item.to_i)
end

And(/^I should own (\d+) health potion item$/) do |arg|
  assert (arg.to_i).eql?(get_current_owned_number_of_health_potion_item.to_i)
end

And(/^I should own (\d+) team revive item$/) do |arg|
  assert (arg.to_i).eql?(get_current_owned_number_of_team_revive_item.to_i)
end


Given(/^I swipe to left in items store$/) do
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.98, y:0.26}, endOffset:{x:0.38, y:0.26}})]})
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].dragInsideWithOptions({startOffset:{x:0.98, y:0.26}, endOffset:{x:0.38, y:0.26}})]})
end