require_relative '../lib/fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizzbuzz" when passed 30' do
    expect(fizzbuzz(30)).to eq 'fizzbuzz'
  end


  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end

  it 'returns "fizz" for multiples of 3' do
    multiples_of_3 = (1..10).map { |i| i * 3 }

    multiples_of_3.each do |number|
      next if number % 5 == 0
      expect(fizzbuzz(number)).to eq('fizz')
    end
  end

  it 'returns the expect results from 1 to 100' do
    result = (1..100).map { |i| fizzbuzz(i) }

    expected_result = (
      [
        1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz",
        "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19,
        "buzz", "fizz", 22, 23, "fizz", "buzz", 26, "fizz", 28, 29,
        "fizzbuzz", 31, 32, "fizz", 34, "buzz", "fizz", 37, 38, "fizz",
        "buzz", 41, "fizz", 43, 44, "fizzbuzz", 46, 47, "fizz", 49,
        "buzz", "fizz", 52, 53, "fizz", "buzz", 56, "fizz", 58, 59,
        "fizzbuzz", 61, 62, "fizz", 64, "buzz", "fizz", 67, 68, "fizz",
        "buzz", 71, "fizz", 73, 74, "fizzbuzz", 76, 77, "fizz", 79,
        "buzz", "fizz", 82, 83, "fizz", "buzz", 86, "fizz", 88, 89,
        "fizzbuzz", 91, 92, "fizz", 94, "buzz", "fizz", 97, 98, "fizz", "buzz"
      ]
    )

    expect(result).to eq expected_result
  end
end
