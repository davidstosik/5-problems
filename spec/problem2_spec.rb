require 'problem2'

RSpec.describe Problem2, '#alternate' do
  subject { Problem2.alternate list1, list2 }
  let(:list1) { [1, 2, 3] }
  let(:list2) { [:a, :b, :c] }

  context 'when list1 is nil' do
    let(:list1) { nil }
    it 'should return list2' do
      is_expected.to eq list2
    end
  end

  context 'when list2 is nil' do
    let(:list2) { nil }
    it 'should return list1' do
      is_expected.to eq list1
    end
  end

  context 'when list1 is empty' do
    let(:list1) { [] }
    it 'should return list2' do
      is_expected.to eq list2
    end
  end

  context 'when list2 is empty' do
    let(:list2) { []}
    it 'should return list1' do
      is_expected.to eq list1
    end
  end

  context 'when both lists are of same length' do
    it 'should alternate all values' do
      is_expected.to eq [1, :a, 2, :b, 3, :c]
    end
  end

  context 'when a list is longer than the other' do
    let(:list1) { (1..5).to_a }
    it 'should alternate values, then append extra items at the end' do
      is_expected.to eq [1, :a, 2, :b, 3, :c, 4, 5]
    end
  end

end
