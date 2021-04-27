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
    it { expect(subject.addition(2.0,3.5)).to be(5.5)}
    it 'Exception only integer' do
      expect {subject.addition('a',5)}.to raise_error(ArgumentError)
    end
    it 'Convert string to integer and to do addition ' do
      expect(subject.addition("12","12")).to be(24.0)
    end
  end

  context 'substraction' do
    subject {Arithmetic::Operations.new}

    it "is there method substraction" do
      expect(subject).to respond_to(:substraction)
    end

    it "Try substraction get back number negetive" do
      expect(subject.substraction(4,5)).to be(-1.0)
    end
    
    it ' Get subs with number positive' do
      expect(subject.substraction(9,0)).to be(9.0)
    end

    it 'take over values' do
      expect(subject.substraction('12','10')).to be(2.0)
    end
    it { expect(subject.substraction('2.3',10.2)).to be(-7.9)}
    it 'Exception only numbers to add' do
      expect {subject.substraction('a',5)}.to raise_error(ArgumentError)
    end
  end
  context 'multiplication' do
    subject {Arithmetic::Operations.new}

    it 'Lets to get product to two input' do
      expect(subject.multiplication(4,4)).to be(16.0)
      expect(subject.multiplication('2',4)).to be(8.0)
    end
    it { expect(subject.multiplication('2.3',10.2)).to be(23.5)}
    it { expect(subject.multiplication('2.3',-4.2)).to be(-9.7)}

    it 'This another fake it' do
      expect {subject.multiplication('a','a')}.to raise_error(ArgumentError)
    end
  end

  context 'division' do
    subject {Arithmetic::Operations.new}
    it { expect(subject.division(4,4)).to be(1.0)}
    it { expect(subject.division(2,4)).to be(0.5)}
    it { expect(subject.division(0,4)).to be(0.0)}
    it { expect(subject.division(100,300)).to be(0.3)}
    it { expect(subject.division('100','300')).to be(0.3)}
    it 'division fake it' do
      expect {subject.division('a','a')}.to raise_error(ArgumentError)
    end
  end
  context 'exponentation' do
    subject {Arithmetic::Operations.new}
    it { expect(subject.expo(8,2)).to be(64.0)}
    it { expect(subject.expo(2,8)).to be(256.0)}
    it { expect(subject.expo(2,0)).to be(1.0)}
    it { expect(subject.expo(0,4)).to be(0.0)}
    it { expect(subject.expo('2','5')).to be(32.0)}
    it { expect(subject.expo('2.2','5.4')).to be(70.6)}
    it { expect(subject.expo('2.2',5.4)).to be(70.6)}
    it 'exponentation fake it' do
      expect {subject.expo('a','a')}.to raise_error(ArgumentError)
    end
  end
  context 'Logarithm' do
    subject {Arithmetic::Operations.new}
    it { expect(subject.log(64,8)).to be(2.0)}
    it { expect(subject.log(1,10)).to be(0.0)}
    it { expect(subject.log(10,10)).to be(1.0)}
    it { expect(subject.log(100,10)).to be(2.0)}
    it { expect(subject.log(1000,10)).to be(3.0)}
  end
  context 'Resolve operations by group sign such as parentheses, square brackets and curly brackets' do
    subject {Arithmetic::Operations.new}
    it { expect(subject.by_sign('(43-15)-19')).to be(9)}
    it { expect(subject.by_sign('40+[25-(3+2)]')).to be(60)}
    it { expect(subject.by_sign('250+[(7-2)+(4-1)+(3-2)]')).to be(259)}
  end
end
