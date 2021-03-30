require "spec_helper"
require 'arithmetic'
RSpec.describe 'Arithmetic Operation >' do
  it 'Instance class' do
    operation = Arithmetic::Operations.new
  end
  context 'addition' do
    subject { Arithmetic::Operations.new }
    it 'add two values' do
      expect(subject.addition(4,5)).to eq(9)
    end
    it 'Exception only integer' do
      expect {subject.addition('a',5)}.to raise_error(ArgumentError)
    end
    it 'Convert string to integer and to do addition ' do
      expect(subject.addition("12","12")).to be(24)
    end
  end

  context 'substraction' do
    subject {Arithmetic::Operations.new}

    it "is there method substraction" do
      expect(subject).to respond_to(:substraction)
    end

    it "Try substraction get back number negetive" do
      expect(subject.substraction(4,5)).to be(-1)
    end
    
    it ' Get subs with number positive' do
      expect(subject.substraction(9,0)).to be(9)
    end

    it 'take over values' do
      expect(subject.substraction('12','10')).to be(2)
    end

    it 'Exception only numbers to add' do
      expect {subject.substraction('a',5)}.to raise_error(ArgumentError)
    end
  end
end
