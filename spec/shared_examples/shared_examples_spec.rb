require 'pessoa'

shared_examples 'status' do |param|
    it "#{param}" do
      pessoa.send("#{param}!")
      expect(pessoa.status).to eq("Sentindo-se #{param.capitalize}")
    end
    
end

describe 'Pessoa' do
  subject(:pessoa) { Pessoa.new }

  
  it_should_behave_like 'status', :feliz
  it_should_behave_like 'status', :triste
  it_should_behave_like 'status', :contente
  
  include_examples 'status', :feliz
  include_examples 'status', :triste
  include_examples 'status', :contente
  
  it_behaves_like 'status', :feliz
  it_behaves_like 'status', :triste
  it_behaves_like 'status', :contente
  

  it 'feliz!' do
    pessoa.feliz!
    expect(pessoa.status).to eq('Sentindo-se Feliz')
  end

  it 'triste!' do
    pessoa.triste!
    expect(pessoa.status).to eq('Sentindo-se Triste')
  end

  it 'contente!' do
    pessoa.contente!
    expect(pessoa.status).to eq('Sentindo-se Contente')
  end
  
end
