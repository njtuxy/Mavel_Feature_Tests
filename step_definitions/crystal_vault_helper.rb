
Given(/^I am at crystal vault$/) do
  wait_for_game_object_present_on_screen("GachaStoreScreen")
end


And(/^I can see (\d+) different type of crystals in crystal vault$/) do |arg|
  assert (get_all_objects_with_the_same_name("GachaCrystalButton(Clone)").length).eql?(arg.to_i)
end


And(/^Premium hero crystal index is (\d+) from bottom$/) do |arg|
  p ">>>>>>>>>>>>>>>"
  p get_crystal_name(arg.to_i)
  p ">>>>>>>>>>>>>>>"
  assert get_crystal_name(arg.to_i).eql?("PREMIUM HERO CRYSTAL")
end


And(/^I touch premium hero crystal$/) do
  touch_crystal_by_index(5)
end


And(/^I should see (\d+) different premium crystal packs$/) do |arg|
  assert (get_all_objects_with_the_same_name("CrystalItem(Clone)").length).eql?(arg.to_i)
end

And(/^The one premium crystal pack price is (\d+)$/) do |arg|
  p get_pricing_button(3)["text01"]
  assert get_pricing_button(3)["text01"].eql?(arg)
end

And(/^The five premium crystal pack price is (\d+)$/) do |arg|
  assert get_pricing_button(2)["text01"].eql?(arg)
end

And(/^The ten premium crystal pack price is (\d+)$/) do |arg|
  assert get_pricing_button(1)["text01"].eql?(arg)
end

And(/^I purchase the one premium crystal pack$/) do
  touch_pricing_button_by_index(3)
end


And(/^I should be at crystal screen after wait$/) do
  wait_for_game_object_present_on_screen("GachaScreen")
end

And(/^I wait and click the open crystal button$/) do
  wait_for_game_object_present_on_screen("Button_Skip")
  sleep 3
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapCount: 1, touchCount: 1,tapOffset:{x:0.88, y:0.92}})]})
end

And(/^I should get crystal detail window$/) do
  wait_for_game_object_present_on_screen("GachaSkipScreen")
end

And(/^I click Back To Vault button$/) do
  game_object = get_back_to_vault_button
  touch_ios_device_with_screen_position(game_object["x"],game_object["y"])
end

private

def get_crystal_from_crystal_vault(index)
  p get_one_object_from_the_same_name_objects_by_index("GachaCrystalButton(Clone)", index)
end

def get_crystal_name(index)
  get_crystal_from_crystal_vault(index)["text00"]
end

def get_premium_crystal_from_crystal_vault
  get_crystal_from_crystal_vault(5)
end

def get_arena_crystal_from_crystal_vault
  get_crystal_from_crystal_vault(4)
end

def get_hero_crystal_from_crystal_vault
  get_crystal_from_crystal_vault(3)
end

def get_free_crystal_from_crystal_vault
  get_crystal_from_crystal_vault(2)
end

def get_daily_crystal_from_crystal_vault
  get_crystal_from_crystal_vault(1)
end

def touch_crystal_by_index(crystal_index)
  button = get_crystal_from_crystal_vault(crystal_index)
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

def touch_pricing_button_by_index(index)
  button = get_pricing_button(index)
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


def get_pricing_button(index)
  get_one_object_from_the_same_name_objects_by_index("Pricing_Button", index)
end

def get_back_to_vault_button
  get_one_object_from_the_same_name_objects_by_index("NewBasicButtonSmallInstance", 1)
end

def get_upgrade_champion_button
  get_one_object_from_the_same_name_objects_by_index("NewBasicButtonSmallInstance", 1)
end


