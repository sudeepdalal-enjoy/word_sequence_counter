
module WordSequenceCounter
class InputReader
  attr_reader :content
  def initialize(args)
    @content = if args.empty?
                 $stdin.read
               else
                 file_names_from_args(args)
                   .map { |file_name| File.read(file_name) }
                   .join("\n")
               end
  end

  private

  def file_names_from_args(args)
    args.select { |arg| File.file?(arg) }
  end
end

end
