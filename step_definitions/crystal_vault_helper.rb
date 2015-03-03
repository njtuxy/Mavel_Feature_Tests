Given(/^There are following crystals in crystal vault:$/) do |table|
  @@crystal_vault = table
  # @crystal_vault.hashes.each do |row|
  #
  #   log row[:Crystal_Name]
  #   log "exit the method!"
  #   # puts row[:Order_from_the_bottom_the_screen].to_s
  # end
end

Given(/^I am at crystal vault$/) do
  wait_for_game_object_present_on_screen("GachaStoreScreen")
  sleep 4
end

Then(/^the crystal orders on screen are same as their orders in the table\.$/) do
  @@crystal_vault.hashes.each do |row|
    expected_crystal_name = row[:Crystal_Name]
    expected_crystal_index = row[:Order_from_the_bottom_the_screen]
    current_crystal_name = get_crystal_name(expected_crystal_index)
    assert_equal(current_crystal_name, expected_crystal_name)
  end
end

# And(/^I can see (\d+) different type of crystals in crystal vault$/) do |arg|
#   crystal_count = get_all_objects_with_the_same_name("GachaCrystalButton(Clone)").length
#   assert(crystal_count.eql?(arg.to_i), log("the crystals count I found on screen is: " + crystal_count.to_s))
# end


# And(/^Premium hero crystal index is (\d+) from bottom$/) do |arg|
#   log(get_crystal_name(arg.to_i))
#   assert get_crystal_name(arg.to_i).eql?("PREMIUM HERO CRYSTAL")
# end

# And(/^The crystal pack "(.*?)" index is (\d+) from bottom$/) do |arg1, arg2|
#   if arg1=="FREE CRYSTAL" || arg1 == "DAILY CRYSTAL"
#     assert(get_daily_crystal_and_free_crystal_s_name(arg2.to_i).eql?(arg1), log("the crystal name found is: " + get_crystal_name(arg2.to_i)))
#   else
#     assert(get_crystal_name(arg2.to_i).eql?(arg1), log("the crystal name found is: " + get_crystal_name(arg2.to_i)))
#   end
#
# end


And(/^I touch premium hero crystal$/) do
  premium_crystal_index = 0
  @@crystal_vault.hashes.each do |row|
    if row[:Crystal_Name] == "PREMIUM HERO CRYSTAL"
      premium_crystal_index = row[:Order_from_the_bottom_the_screen]
    end
  end
  touch_crystal_by_index(premium_crystal_index)
end

And(/^I should see the following crystal packs on screen$/) do |table|
  # table is a table.hashes.keys # => [:pack_name, :Order_from_the_bottom_the_screen]
  @premium_crystal_packs = table
  @premium_crystal_packs.hashes.each do |row|
    pack_index_in_table = row[:Order_from_the_bottom_the_screen]
    pack_name_in_table = row[:pack_name]
    pack_price_in_table = row[:Price]
    pack_name_on_screen = get_crystal_pack_name(pack_index_in_table)
    pack_price_on_screen = get_crystal_pack_price(pack_index_in_table)
    assert_equal(pack_name_in_table, pack_name_on_screen)
    assert_equal(pack_price_in_table, pack_price_on_screen)
  end
end

# And(/^I should see (\d+) different premium crystal packs$/) do |arg|
#   crystal_pack_count = (get_all_objects_with_the_same_name("CrystalItem(Clone)").length)
#   assert(crystal_pack_count.eql?(arg.to_i), log("found " + crystal_pack_count.to_s))
# end

# And(/^The one premium crystal pack price is (\d+)$/) do |arg|
#   pack_price = get_pricing_button(3)["text01"]
#   assert(pack_price.eql?(arg), log("current pack price is " + pack_price))
# end
#
# And(/^The five premium crystal pack price is (\d+)$/) do |arg|
#   pack_price = get_pricing_button(2)["text01"]
#   assert(pack_price.eql?(arg), log("current pack price is " + pack_price))
# end
#
# And(/^The ten premium crystal pack price is (\d+)$/) do |arg|
#   pack_price = get_pricing_button(1)["text01"]
#   assert(pack_price.eql?(arg), log("current pack price is " + pack_price))
# end

And(/^I purchase the one premium crystal pack$/) do
  pack_index = 0
  @premium_crystal_packs.hashes.each do |row|
    if row[:pack_name] == "1 CRYSTAL PACK"
      pack_index = row[:Order_from_the_bottom_the_screen]
    end
  end
  log(pack_index)
  touch_pricing_button_by_index(pack_index)
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
#Local helper methods

def get_crystal_from_crystal_vault(index)
  get_one_object_from_the_same_name_objects_by_index("GachaCrystalButton(Clone)", index)
end

def get_crystal_name(index)
  if index.to_i > 2
   get_crystal_from_crystal_vault(index)["text00"]
  else
    # free and daily crystals are speical?
   get_crystal_from_crystal_vault(index)["text01"]
  end
end

def get_crystal_pack_name(index)
  get_one_object_from_the_same_name_objects_by_index("CrystalItem(Clone)", index)["text01"]
end

def get_crystal_pack_price(index)
  get_one_object_from_the_same_name_objects_by_index("CrystalItem(Clone)", index)["text03"]
end

# def get_daily_crystal_and_free_crystal_s_name(index)
#   get_crystal_from_crystal_vault(index)["text01"]
# end


# def get_premium_crystal_from_crystal_vault
#   get_crystal_from_crystal_vault(6)
# end
#
# def get_arena_crystal_from_crystal_vault
#   get_crystal_from_crystal_vault(5)
# end
#
# def get_alliance_crystal_from_crystal_vault
#   get_crystal_from_crystal_vault(4)
# end
#
# def get_hero_crystal_from_crystal_vault
#   get_crystal_from_crystal_vault(3)
# end
#
# def get_free_crystal_from_crystal_vault
#   get_crystal_from_crystal_vault(2)
# end
#
# def get_daily_crystal_from_crystal_vault
#   get_crystal_from_crystal_vault(1)
# end

def touch_crystal_by_index(crystal_index)
  button = get_crystal_from_crystal_vault(crystal_index)
  x = button["x"].to_f
  y = button["y"].to_f
  x = (x/2)/1024
  y = (y/2 - 768).abs/768
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:"#{x}", y:"#{y}"}})]})
end

def touch_pricing_button_by_index(index)
  button = get_pricing_button(index)
  x = button["x"].to_f
  y = button["y"].to_f
  x = (x/2)/1024
  y = (y/2 - 768).abs/768
  log(x.to_s)
  log(y.to_s)
  send_uia_command({:command => %Q[target.frontMostApp().mainWindow().elements()[0].tapWithOptions({tapOffset:{x:"#{x}", y:"#{y}"}})]})
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


