require 'problem5'

RSpec.describe Problem5, '#solve' do
  subject { Problem5.solve }
  it 'should contain at least the example item' do
    expect(subject).to include('1+2+34-5+67-8+9')
  end
  it 'all its items should evaluate to 100' do
    subject.each do |item|
      expect(eval(item)).to eq 100
    end
  end
  it 'output results' do
    puts subject
  end
end
