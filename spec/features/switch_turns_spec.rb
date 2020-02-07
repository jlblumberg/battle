require 'spec_helper'

feature "switch turns" do
  context "seeing the current turn" do
    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content("Joe's turn")
    end
    
    scenario "after player one attacks" do
      sign_in_and_play
      click_button "Attack!"
      click_button "Next"
      expect(page).to have_content "Josh's turn"
    end
  end
end