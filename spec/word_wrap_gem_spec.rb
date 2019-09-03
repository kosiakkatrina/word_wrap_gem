require "word_wrap_gem"
describe WordWrapGem::Wrapper do
  it "returns an empty string when given an empty string" do
    expect(described_class.wrap('', 4)).to eq('')
  end

  it "returns the string when string length is less than column" do
    expect(described_class.wrap('word',6)).to eq('word')
  end

  it "converts input into string" do
    expect(described_class.wrap(nil, 5)).to eq('')
    expect(described_class.wrap(2432, 5)).to eq('2432')
  end

  it "raises ArgumentError when given invalid column input" do
    expect { described_class.wrap('word', -5) }.to raise_error(ArgumentError)
    expect { described_class.wrap('word', 0) }.to raise_error(ArgumentError)
    expect { described_class.wrap('word', 2.5) }.to raise_error(ArgumentError)
    expect { described_class.wrap('word', '5') }.to raise_error(ArgumentError)
  end

  it "returns split string" do
    expect(described_class.wrap('longword', 4)).to eq("long\nword")
    expect(described_class.wrap('longerword', 6)).to eq("longer\nword")
    expect(described_class.wrap('verylongword', 4)).to eq("very\nlong\nword")
  end

  it "splits strings on spaces" do
    expect(described_class.wrap('long word', 4)).to eq("long\nword")
    expect(described_class.wrap(' long word ', 4)).to eq("long\nword")
    expect(described_class.wrap('long word ', 5)).to eq("long\nword")
    expect(described_class.wrap('     ', 1)).to eq("")

  end

  it "breaks lines at word boundaries" do
    expect(described_class.wrap('long word', 6)).to eq("long\nword")
  end

  it "does long text" do
    expect(described_class.wrap("You write a class called Wrapper, that has a single static function named wrap that takes two arguments, a string, and a column number. The function returns the string, but with line breaks inserted at just the right places to make sure that no line is longer than the column number. You try to break lines at word boundaries.", 66)).to eq("You write a class called Wrapper, that has a single static\nfunction named wrap that takes two arguments, a string, and a\ncolumn number. The function returns the string, but with line\nbreaks inserted at just the right places to make sure that no\nline is longer than the column number. You try to break lines at\nword boundaries.")
  end
end