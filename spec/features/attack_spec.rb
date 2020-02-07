require 'spec_helper'

feature 'Can attack' do

  scenario 'can attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content("Joe attacked Josh")
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    attack_cycle
    click_button 'Attack!'
    expect(page).to have_content("Josh attacked Joe")
  end

  scenario 'reduce player 1 HP by 10' do
    sign_in_and_play
    attack_cycle
    attack_cycle
    expect(page).to have_content 'Joe HP:50'
  end

end