require 'problem1'


%w(for_loop while_loop recursion).each do |method|

  RSpec.describe Problem1, "##{method}" do
    subject { Problem1.send method, list }
    context 'when list is empty' do
      let(:list) { [] }
      it { is_expected.to eq 0 }
    end
    context 'when list is nil' do
      let(:list) { nil }
      it { is_expected.to be_nil }
    end
    context 'when list has only one item' do
      let(:list) { [7] }
      it { is_expected.to eq 7 }
    end
    context 'when list has many items' do
      let(:list) { [0, 1, 2, 3, 4] }
      it { is_expected.to eq 10 }
    end
  end

end
