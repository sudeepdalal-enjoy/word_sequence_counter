[#](#) WordSequenceCounter
Source code is organized as follows
- lib/input_reader is responsible for reading input files
- lib/input cleaner enforce rules for cleaning 
- lib/word_sequence_counter is responsible for counting words



-- installation 
```
>> cd word_sequence_count
>> bundle install

```
-- to run program with file inputs

'''
>> cd word_sequence_count
>> ./bin/word_sequence_counter ./sample/texts/moby-dick.txt ./sample/texts/brothers-karamazov.txt 
```

-- to run program with STDIN

'''
>> cd word_sequence_count
>> cat ./sample/texts/moby-dick.txt | [bin word_sequence_counter](./bin/word_sequence_counter) 
```

-- to run test suite

```
>> cd word_sequence_count
>> rake spec
```