
module WordSequenceCounter
class WordSequenceCounter
  attr_reader :sequence_length

  def initialize(content, sequence_length = 3)
    @content = content
    @sequence_length = sequence_length 
    @word_sequence_count = Hash.new(0)
  end

  def count_word_sequence
    @content.each_cons(sequence_length) do |*words|
      key = words.join(' ')
      @word_sequence_count[key] += 1
    end
    @word_sequence_count
  end
end
end
