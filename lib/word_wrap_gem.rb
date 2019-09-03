require "word_wrap_gem/version"

module WordWrapGem
  class Error < StandardError; end
  class Wrapper
    def self.wrap (s,c)
      raise ArgumentError if (c < 1 || c%1!=0)
      s = s.to_s
      s = s.strip
      if s.length > c
        where_to_break = s.slice(0, c).rindex(" ") || c
        num_characters_remain = s.length - where_to_break
        return s.slice(0, where_to_break) + "\n" + wrap(s.slice(where_to_break, num_characters_remain).strip, c)
      end
      s
    end
  end


end
