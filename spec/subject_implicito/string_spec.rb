require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    it 'Não está vazia' do
      expect(subject).to eq("Não sou vazio")
    end
  end
end

# A class mais interna e quem vai definir o subject.
