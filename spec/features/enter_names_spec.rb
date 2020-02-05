require 'spec_helper.rb'

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content("Testing infrastructure working!")
#   end
# end

feature '2 players start game' do
  scenario 'Can add two player names to a form' do
    sign_in_and_play
    expect(page).to have_content("Joe vs Josh")
  end
end