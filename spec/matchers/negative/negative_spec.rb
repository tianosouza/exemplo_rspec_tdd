RSpec::Matchers.define_negated_matcher :exclude, :include


describe Array.new([1,2,3]), 'Array' do
    it '#include to exclude' do
      expect(subject).to include(2)
      expect(subject).to include(2,1)
    end
    
    it { expect(subject).to exclude(4) }   
end