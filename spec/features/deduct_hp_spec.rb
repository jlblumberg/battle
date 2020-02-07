require 'spec_helper'

feature 'deduct_hp' do 
  scenario 'it should deduct hp' do 
    sign_in_and_play
    click_button "Attack!"
    click_button "Next"
    expect(page).to have_content 'Josh HP:50'
  end 
end 