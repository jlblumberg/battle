require 'spec_helper'
describe Player do 
  subject(:josh) { described_class.new("Josh") }
  subject(:mrtl) { described_class.new("Mrtl") }

  describe '#name' do
    it 'should return the name of the player' do 
      expect(josh.name).to eq ("Josh")
    end 
  end 

  describe '#hp' do
    it 'returns the hit points' do
      expect(josh.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mrtl).to receive(:receive_damage)
      josh.attack(mrtl)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { josh.receive_damage }.to change { josh.hp }.by(-10)
    end
  end
end