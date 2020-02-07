require 'spec_helper'

feature 'Can attack' do

  scenario 'can attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content("Joe attacked Josh")
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Next'
    click_button 'Attack!'
    expect(page).to have_content("Josh attacked Joe")
  end
  
end