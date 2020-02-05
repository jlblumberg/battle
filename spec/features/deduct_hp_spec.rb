require 'spec_helper'

feature 'deduct_hp' do 
  scenario 'it should deduct hp' do 
    sign_in_and_play
    click_button "Attack Josh"
    
    expect(page).to have_content 'Josh HP:90'
  end 
end 