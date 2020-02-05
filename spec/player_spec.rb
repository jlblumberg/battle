require 'spec_helper'
describe Player do 
  describe '#name' do
    it 'should return the name of the player' do 
      expect(Player.new("Joe").name).to eq ("Joe")
    end 
  end 
end 