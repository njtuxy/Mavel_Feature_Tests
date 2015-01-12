@step_count = 0

launch_the_game

at_exit do
  exit_the_game
end


Before do |scenario|
end

After do |scenario|  
end



#This method doesn't really work!!
AfterStep do |scenario|
   @step_count ||= 0
   current_feature = if scenario.respond_to?('scenario_outline')
                     # execute the following code only for scenarios outline (starting from the second example)
                       scenario.scenario_outline.feature
                     else
                     # execute the following code only for a scenario and a scenario outline (the first example only)                     
                       scenario.feature
                     end
   # call method 'steps' and select the current step
   # we use .send because the method 'steps' is private for scenario outline
   step_title = current_feature.feature_elements[0].send(:steps).to_a[@step_count].name
   save_screen_shots_for_step(step_title, @step_count+1)
   # increase step counter
   @step_count += 1
end


