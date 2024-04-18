describe 'Matcher output' do
    it { expect { print 'tiano' }.to output.to_stdout }
    it { expect { print 'tiano' }.to output('tiano').to_stdout }
    it { expect { print 'tiano' }.to output(/ti/).to_stdout }

    it { expect { warn 'tiano' }.to output.to_stderr } 
    it { expect { warn 'tiano' }.to output("tiano\n").to_stderr } # Quando for representar qualquer instrução para que o ruby interprete algo que não seja uma string, sempre tem que ser com aspas ("") duplas. 
    it { expect { warn 'tiano' }.to output(/t/).to_stderr } 
end