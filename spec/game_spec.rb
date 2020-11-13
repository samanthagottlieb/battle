require 'game'

describe Game do
  subject(:game) { described_class.new(player_1_d, player_2_d) }
  let(:player_1_d) { double :player }
  let(:player_2_d) { double :player }

  describe '#player_1' do
    it 'saves player_1 in instance variable' do
      expect(game.player_1).to eq(player_1_d)
    end
  end

  describe '#player_2' do
    it 'saves player_1 in instance variable' do
      expect(game.player_2).to eq(player_2_d)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(game.player_2).to receive(:reduce_hp)
      game.attack(player_2_d)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq(player_1_d)
    end
  end

  describe '#switch_turns' do
    it 'swithces the turn' do
      game.switch_turns
      expect(game.current_turn).to eq(player_2_d)
    end
  end
end
