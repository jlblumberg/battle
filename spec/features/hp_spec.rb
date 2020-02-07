require 'spec_helper'

feature 'View HP' do

  scenario "see player one's HP" do
    sign_in_and_play
    expect(page).to have_content("Joe HP:60")
  end

  scenario "see player two's HP" do
    sign_in_and_play
    expect(page).to have_content("Josh HP:60")
  end

end