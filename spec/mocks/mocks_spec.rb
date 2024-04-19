require "student"
require "course"


describe "Stub" do
  it "#has_finished" do
    student = Student.new
    
    expect(student).to receive(:bar) 
    
    student.bar
  end

  it "args" do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.bar(123)
  end

  it "args" do
    student = Student.new
    # expect(student).to receive(:foo).with(123).once
    expect(student).to receive(:foo).with(123).twice
    # expect(student).to receive(:foo).with(123).exctly(3).times
    # expect(student).to receive(:foo).with(123).at_least(:once)
    # expect(student).to receive(:foo).with(123).at_least(:twice)
    # expect(student).to receive(:foo).with(123).at_least(3).times
    student.foo(123)
    student.foo(123)
  end 

  it "retorno" do
    student = Student.new
    allow(student).to receive(:foo).with(123).and_return(true)
    expect(student.foo(123)).to be true
  end
  
end