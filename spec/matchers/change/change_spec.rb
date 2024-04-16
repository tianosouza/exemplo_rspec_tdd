require 'count'

describe 'Matcher change' do
    it { expect{ Count.increment }.to change { Count.qtd } }
    it { expect{ Count.increment }.to change { Count.qtd }.by(1) }
    it { expect{ Count.increment }.to change { Count.qtd }.from(2).to(3) }
end
