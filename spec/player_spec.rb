require 'player'

describe Player do
  let(:rafa) { Player.new('Rafa') }
  let(:pablito) { Player.new('Pablito') }

  describe '#name' do

    it 'returns its name' do
      expect(rafa.name).to eq('Rafa')
    end
  end

  describe '#hp' do
    it 'returns the hit points' do
      expect(rafa.hp).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(rafa).to receive(:reduce_hp)
      pablito.attack(rafa)
    end
  end

  describe '#reduce_hp' do
    it 'reduces the player hit points' do
      expect { pablito.reduce_hp }.to change { pablito.hp }.by (-10)
    end
  end
end
