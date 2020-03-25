class PigLatinizer

    def piglatinize(phrase)
        phrase.split(" ").length == 1 ? piglatinize_word(phrase) : piglatinize_sentence(phrase)
    end

    def piglatinize_word(word)
        parts = word.split(/([aeiouAEIOU].*)/)
        start = parts[0]
        rest = parts[1]

        if start.length > 0
            "#{rest}#{start}ay"
        else
            "#{rest}way"
        end  
    end

    def piglatinize_sentence(sentence)
        sentence.split.collect {|word| piglatinize(word)}.join(" ")      
    end

end