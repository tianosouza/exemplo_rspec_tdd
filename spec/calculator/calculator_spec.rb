require 'calculator'

# BDD ~> Abordagem de desenvolvimento de software
# Behaviour Driven Development
# Desenvolvimento guiado/orientado por comportamento

# TDD ~> Prática de desesnvolvimento
# Testing Driven Development
# Desenvolvimento guiado por teste

describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      # Setup ~> Quando você coloca o SUT(system under test, o objeto sendo testado)
      # no estado necessário para o teste;
      calc = described_class.new
      # Exercise ~> Quando você interage com o SUT;
      result = calc.sum(2,5)
      # Verify ~> Quando você verifica o comportamento esperado
      expect(result).to eq(7)
    end
    # Teardown ~> Quando você coloca o sistema no estado em que ele estava antes
    # do teste ser executado. O Rspec faz isso por debaixo dos pano!
    it 'with negative and positive numbers' do
      calc = described_class.new

      result = calc.sum(-2,5)

      expect(result).to eq(3)
    end

    it 'with negative numbers' do
      calc = described_class.new

      result = calc.sum(-2,-5)

      expect(result).to eq(-7)
    end
  end
end
