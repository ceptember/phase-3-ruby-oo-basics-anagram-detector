class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
       
    end

    def match(array)
        array.filter do |x|  
            x.chars.sort == @word.chars.sort
        end
    end

end

listen = Anagram.new("listen")
puts listen.match(%w[enlists google inlets banana])
