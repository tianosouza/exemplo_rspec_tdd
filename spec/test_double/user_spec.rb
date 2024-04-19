describe 'Test double' do
  it 'double' do
    user = double('User') # -> Faker
    #user = double(User) # -> Exite
    #allow(user).to receive_messages(name: 'tiano', password: '123')
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    puts user.inspect
    puts user.name
    puts user.password
  end
  
  it 'double' do
    user = double('User').as_null_object # -> Faker
    #user = double(User) # -> Exite
    #allow(user).to receive_messages(name: 'tiano', password: '123')
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:password).and_return('secret')
    puts user.inspect
    puts user.name
    puts user.password
    user.abc
  end
end
