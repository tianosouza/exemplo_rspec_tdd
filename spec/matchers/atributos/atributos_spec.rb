require 'pessoa'

describe 'Atributos' do
  it 'have_atributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Tiano"
    pessoa.idade = 39

    expect(pessoa).to have_attributes(nome: start_with("T"), idade: (be >= 39)) # Começa com, sendo
    # expect(pessoa).to have_attributes(nome: starting_with("T"), idade: (be >= 39)) # Começando com, sendo
    # expect(pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 39)) # Uma string começando com e um valor
  end
end
