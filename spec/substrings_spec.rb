require 'rspec'
require_relative '../substrings'

RSpec.describe 'Substrings' do
  it 'handles various input scenarios correctly' do
    dictionary = %w[below down go going horn how howdy it i low own part partner sit]

    input = 'below'
    expected_output = { 'below' => 1, 'low' => 1 }
    expect(substrings(input, dictionary)).to eq(expected_output)

    input = "Howdy partner, sit down! How's it going?"
    expected_output = { 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
                        'part' => 1, 'partner' => 1, 'sit' => 1 }
    expect(substrings(input, dictionary)).to eq(expected_output)
  end
end
