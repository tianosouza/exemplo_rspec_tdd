describe 'Matchers de Igualdade' do
  it '#equal - Testa se e o mesmo Objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to equal(y) # Usando o matcher equal para verificar se os objetos são referências iguais.
    expect(x).to equal(x)
  end

  it '#be - Testa Objeto' do
    x = "ruby"
    y = "ruby"
    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eql - Testa valor/conteudo' do
    x = "ruby"
    y = "ruby"
    expect(x).to eql(y)
  end
  it '#eql - Testa valor/conteudo' do
    x = "ruby"
    y = "ruby"
    expect(x).to eq(y)
  end
end
