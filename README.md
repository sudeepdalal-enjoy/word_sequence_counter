# word_sequence_counter
Source code is organized as follows
- lib/input_reader is responsible for reading input files
- lib/input_cleaner enforce rules for cleaning 
- lib/word_sequence_counter is responsible for counting words
- WordSequenceCounterApp defined at https://github.com/sudeepdalal-enjoy/word_sequence_counter/blob/master/bin/word_sequence_counter
  compose functionality from above components



- installation
- Tested with ruby 3.00 and Bundler version 2.2.15

```
>> cd word_sequence_count
>> bundle install

```
- To run program (with file inputs)

```
>> cd word_sequence_count
>> ./bin/word_sequence_counter ./sample/texts/moby-dick.txt ./sample/texts/brothers-karamazov.txt 
```

- to run program(with STDIN)

```
>> cd word_sequence_count
>> cat ./sample/texts/moby-dick.txt | ./bin/word_sequence_counter
```

- To run test suite

```
>> cd word_sequence_count
>> rake spec
```
