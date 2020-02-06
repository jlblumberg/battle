require 'spec_helper'

describe Game do

  subject(:game) { described_class.new }
  let(:josh) { double(:player_1) }
  let(:mrtl) { double(:player_2) }

  describe '#attack' do
    it 'damages the player' do
      expect(mrtl).to receive(:receive_damage)
      game.attack(mrtl)
    end
  end
end