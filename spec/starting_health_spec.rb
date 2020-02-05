require 'spec_helper'

feature 'Can view other players HP' do
  scenario 'start of game shows players HP' do
    sign_in_and_play
    expect(page).to have_content("Josh HP:100")
  end
end