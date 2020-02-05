require 'spec_helper'
describe Player do 
  subject(:player) { described_class.new("Joe") }
  describe '#name' do
    it 'should return the name of the player' do 
      expect(player.name).to eq ("Joe")
    end 
  end 

  describe '#deduct_hp' do 
    it 'should deduct from hp' do 
      expect { player.deduct_hp(10) }.to change{player.hp}.by(-10)
    end 
  end 
end 