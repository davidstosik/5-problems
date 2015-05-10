require 'problem3'

RSpec.describe Problem3, '#fibonacci100' do
  subject { Problem3.fibonacci100 }
  it 'should contain 100 items' do
    expect(subject.count).to eq 100
  end
  it 'its first 10 items should match the known ones' do
    expect(subject[0..9]).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end
  it 'its last item should be the sum of the two previous ones' do
    expect(subject[-1]).to eq(subject[-2] + subject[-3])
  end
end
