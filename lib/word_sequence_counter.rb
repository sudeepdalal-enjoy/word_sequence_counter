# frozen_string_literal: true

require_relative 'word_sequence_counter/version'
require_relative 'word_sequence_counter/word_sequence_counter'
require_relative 'word_sequence_counter/input_reader'
require_relative 'word_sequence_counter/input_cleaner'

module WordSequenceCounter
  class Error < StandardError; end
end
