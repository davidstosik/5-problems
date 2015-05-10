require 'problem4'

RSpec.describe Problem4, '#arrange' do
  subject { Problem4.arrange(list).to_i }
  context 'when list is [1, 2, 3, 4, 5]' do
    let(:list){ [1, 2, 3, 4, 5] }
    it 'should return 54321' do
      is_expected.to eq 54321
    end
  end
  context 'when list is [50, 2, 1, 9]' do
    let(:list){ [50, 2, 1, 9] }
    it 'should return 95021' do
      is_expected.to eq 95021
    end
  end
  context 'when list is [56, 5, 1, 4]' do
    let(:list){ [56, 5, 1, 4] }
    it 'should return 56541' do
      is_expected.to eq 56541
    end
  end
  context 'when list is [53, 5, 1, 4]' do
    let(:list) { [53, 5, 1, 4] }
    it 'should return 55341' do
      is_expected.to eq 55341
    end
  end
  context 'when list is [53, 5, 1, 9]' do
    let(:list) { [53, 5, 1, 9] }
    it 'should return 95531' do
      is_expected.to eq 95531
    end
  end
  context 'when list is [56, 5, 1, 9]' do
    let(:list) { [56, 5, 1, 9] }
    it 'should return 95651' do
      is_expected.to eq 95651
    end
  end
  context 'when list is [521, 5, 3]' do
    let(:list) { [521, 5, 3] }
    it 'should return 55213' do
      is_expected.to eq 55213
    end
  end
  context 'when list is [521, 5, 6]' do
    let(:list) { [521, 5, 6] }
    it 'should return 65521' do
      is_expected.to eq 65521
    end
  end
end
