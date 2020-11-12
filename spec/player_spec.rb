require 'player'

describe Player do

  describe '#name' do
    let(:player) { Player.new('Rafa') }

    it 'returns its name' do
      expect(player.name).to eq('Rafa')
    end
  end
end
