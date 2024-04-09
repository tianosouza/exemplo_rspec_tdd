require 'calculator'

# BDD ~> Abordagem de desenvolvimento de software
# Behaviour Driven Development
# Desenvolvimento guiado/orientado por comportamento

# TDD ~> Prática de desesnvolvimento
# Testing Driven Development
# Desenvolvimento guiado por teste

#~> describe Calculator, "sobre a class Calculator" do
describe Calculator do
  context '#sum' do
    # Subject explicit
    # Quando podemos sobrescrever
    # subject(:calc) { described_class.new }
    # subject(:subject) { described_class.new(1,2,3) } <~ com parâmetros
    it 'with positive numbers' do
      # Setup ~> Quando você coloca o SUT(system under test, o objeto sendo testado)
      # no estado necessário para o teste;
      # calc = described_class.new

      # Exercise ~> Quando você interage com o SUT;
      result = subject.sum(2,5) #subject implicito

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
      calc = Calculator.new

      result = calc.sum(-2,-5)

      expect(result).to eq(-7)
    end
  end

  context '#div' do
  # raise_exception
  # raise_error(ErrorClass)
  # raise_error("error message")
  # raise_error(ErrorClass, "error message")
  # /regex/
    it 'divided by 0' do
      expect { subject.div(4, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(4, 0) }.to raise_error("divided by 0")
      expect { subject.div(4, 0) }.to raise_error(ZeroDivisionError, "divided by 0")
      expect { subject.div(4, 0) }.to raise_error(/divided/)
    end
  end
end
