module WordSequenceCounter
RSpec.describe "InputCleaner" do
  let(:input_cleaner) { InputCleaner.new("testing  cleaned inputs") }
    it "cleans the input" do
      expect(input_cleaner.clean_content).to eq(["testing","cleaned","inputs"])
    end
end

end
