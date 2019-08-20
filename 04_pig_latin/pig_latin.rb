#write your code here
def translate (sentence)
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    consonant_sounds = ['ch', 'qu']
    words = sentence.downcase.split(' ')

    words.map! {|word|
        consonant_sounds.each do |sound|
            if word.start_with? sound 
                finish = sound.length
                word = word[finish..-1] + sound
            elsif !(word.start_with?(*vowels))
                vowel = 0
                word.each_char.with_index do |char, index|
                    if vowels.include? char
                        vowel = index
                        break
                    end
                end
                if word[vowel..-1].start_with?(*consonant_sounds)
                    finish = vowel + sound.length
                    word = word[finish..-1] + word[0...vowel] + sound
                elsif word[(vowel-1)..-1].start_with?(*consonant_sounds)
                    finish = vowel 
                    word = word[finish+1..-1] + word[0..finish]
                else
                    word = word[vowel..-1] + word[0...vowel]
                end

            end
        end
        word += "ay"
    }

    sentence = words.join(' ')
    sentence
end
        
        
        


            
            
        


            