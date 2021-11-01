# frozen_string_literal: true
module WordSequenceCounter
RSpec.describe WordSequenceCounter do
  describe '#count_word_sequence' do
    let(:args) { ['spec/fixtures/input.txt'] }
    let(:input_reader) { InputReader.new(args) }
    let(:input_cleaner) { InputCleaner.new(input_reader.content) }
    let(:word_sequence_counter) { WordSequenceCounter.new(input_cleaner.clean_content) }

    it 'returns a hash of word sequences and their counts' do
      expect(word_sequence_counter.count_word_sequence).to be_a_kind_of(Hash)
    end
    it 'returns a hash of size 4' do
      expect(word_sequence_counter.count_word_sequence.size).to eq(4)
    end

    it 'keep contractions intact' do
      expect(word_sequence_counter.count_word_sequence.keys.join).to match(/can't/)
    end
  end
end
end
