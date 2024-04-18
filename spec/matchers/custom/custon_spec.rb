# Tag filters 
# key:true
# key:value
# ~ use para negação  (rspec -t ~slow)

# chamada -> --tag ou -t (rspec -t :key ou rspec -t key:value)

# .rspec -> --tag type:value
# .rspec -> --tag ~slow


RSpec::Matchers.define :be_a_multiple_of do |expected|
    match do |actual|
        actual %  === 0
    end

    failure_message do |actual|
        "expected that #{actual} would be a multiple of #{expected}"
    end

    description do
        "be a multiple of #{expected}"
    end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) } 
end
