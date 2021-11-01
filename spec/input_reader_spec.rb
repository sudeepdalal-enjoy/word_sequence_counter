module WordSequenceCounter
RSpec.describe "InputReader" do
  let(:standard_input) { "testing stdin inputs" }
  let(:input_reader) { InputReader.new() }
  context "Input from STDIN"do
    it "reads from stdin if no args are given" do
      allow($stdin).to receive(:read).and_return standard_input
      input_reader = InputReader.new([])
      expect(input_reader.content).to eq(standard_input)
    end
  end
  context "Input from file" do
    let(:args) { ['spec/fixtures/input.txt'] }
    let(:input_reader) { InputReader.new(args) }
    it "reads from file if file name is given" do
      expect(input_reader.content).to eq(File.read(args[0]))
    end
  end
end

end
