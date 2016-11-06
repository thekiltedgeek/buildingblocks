class CaesarCipher
    attr_accessor :text, :offset
    attr_reader :result
    def initialize(text, offset)
        @text = text
        @offset = offset
        @result = ''
        self.encrypt
    end
    
    def encrypt
        @text.each_char {|c|
            c.ord > 90 ? upper_limit = 122 : upper_limit = 90
            if c =~ /[a-z]|[A-Z]/
                i = c.ord + @offset
                i -= 26 if i > upper_limit
                @result << i.chr
            else
                @result << c
            end
            }
    end
end