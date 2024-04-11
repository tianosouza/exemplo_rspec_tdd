require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   puts 'Antes'
  #   @pessoa = Pessoa.new
  #   puts "#{@pessoa.inspect}"
  # end

  let(:pessoa) { Pessoa.new }
  it 'have_atributes' do
    puts '##########'
    puts 'Durante'
    # pessoa = Pessoa.new
    pessoa.nome = "Tiano"
    pessoa.idade = 39
    puts "#{pessoa.inspect}"
    expect(pessoa).to have_attributes(nome: start_with("T"), idade: (be >= 39)) # Começa com, sendo
    # expect(pessoa).to have_attributes(nome: starting_with("T"), idade: (be >= 39)) # Começando com, sendo
    # expect(pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 39)) # Uma string começando com e um valor
    puts '##########'
  end
end
