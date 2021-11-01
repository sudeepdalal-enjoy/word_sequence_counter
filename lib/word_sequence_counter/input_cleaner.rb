
module WordSequenceCounter
class InputCleaner

  def initialize(content, rules=[])
    @content = content
    @rules = []
  end

  def clean_content
    @content.downcase!
    clean_content_with_rules!
    @content = @content.split(' ')
  end
 
  private

  def clean_content_with_rules!
    rules.each { |rule| rule.call(@content) }
  end

  def rules
    @rules.append( lambda { |word| word.gsub!(remove_punct_keep_contraction_regex, '');word })
  end

  def remove_punct_keep_contraction_regex
    /[^'[a-z\s]]/
  end
    
end
end
