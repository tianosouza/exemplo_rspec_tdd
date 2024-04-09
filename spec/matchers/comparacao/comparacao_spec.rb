describe 'Matchers de Comparaçã' do
  it '>' do
    expect(10).to be > 5
  end

  it '>=' do
    expect(5).to be >= 5
  end

  it '<' do
    expect(3).to be < 4
  end

  it '<=' do
    expect(3).to be <= 3
  end

  it 'be_between inclusive' do
    expect(2).to be_between(2, 4).inclusive
    expect(3).to be_between(2, 4).inclusive
    expect(4).to be_between(2, 4).inclusive
  end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
    expect(3).to be_between(2, 7).exclusive
    expect(6).to be_between(2, 7).exclusive
  end

  it 'match' do
    expect('hello').to match(/^hel/)
  end

  it 'start_with' do
    expect('hello world').to start_with('hello')
  end

  it 'end_with' do
    expect('hello world').to end_with('world')
  end
end
