$count = 0

describe 'let' do
  let(:count) { $count += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1) # 1° vez é carregado
    expect(count).to eq(1) # 2° fica em  cache, então retorna o mesmo valor
    puts count
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) # 3°  é chamado novamente para verificar se não está cacheado
    puts count
  end
end
