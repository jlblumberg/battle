require 'spec_helper'

feature 'Can view other players HP' do
  scenario 'start of game shows players HP' do
    visit('/')
    fill_in :player_1, with: 'Joe'
    fill_in :player_2, with: 'Josh'
    click_button 'Submit'
    expect(page).to have_content("Josh HP:100")
  end
end