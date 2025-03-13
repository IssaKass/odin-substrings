def substrings(word, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, substring|
    count = word.split(' ').select { |w| w.downcase.include?(substring.downcase) }.count
    result[substring] += count unless count.zero?
    result
  end
end