require 'spec_helper'

feature 'Can attack' do
  scenario 'can attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack player 2'
    expect(page).to have_content("Joe attacked Josh")
  end
end