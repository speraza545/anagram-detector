# Your code goes here!
require "pry"

class Anagram  
    attr_accessor :word
    def initialize(word)
        @word = word
    end
      
      def match(array)
        new_arr = array.map do |potential_anagram|
            if @word.length == potential_anagram.length
                count = 0
                @word.split("").each do |letter|
                 potential_anagram.include?(letter) ? count += 1 : nil
                end
                count == @word.length ? potential_anagram : nil
            end
        end
        new_arr.compact
      end
end
