describe 'pratica' do
  context 'contexto um' do
    before do
      puts 'eu sou o contexto um'
    end
    it 'it de um' do
      puts 'contex um 1'
      puts 'it um 1-2'
    end

    context 'filho de um' do
      it 'it filho de um' do
        puts 'contex filho de um 1/2-1'
        puts 'it filho de um 1/2-1-2'
      end
    end
  end
  context 'contexto dois' do
    before do
      puts 'eu sou o contexto dois'
    end
    it 'it dois' do
      puts 'contex dois'
      puts 'it dois'
    end

    context 'filho de dois' do
      it 'it filho de dois' do
        puts 'contex filho de um'
        puts 'it filho de um'
      end

    end
  end
  context 'contexto tres' do
    before do

    end
    context 'filho de tres' do

    end
  end
end
