def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Joe'
  fill_in :player_2, with: 'Josh'
  click_button 'Submit'
end 

def attack_cycle
  click_button "Attack!"
  click_button "Next"
end