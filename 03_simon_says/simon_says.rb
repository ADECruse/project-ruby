def echo(words)
  words.to_s
end

def shout(words)
  words.upcase
end

def repeat(words, i = 0)
  if i > 0
    repeat_words = []
    i.times do
      repeat_words.push words
    end
    repeat_words.join(' ')
  else
    words + ' ' + words
  end
end

def start_of_word(word, i = 0)
  letters = []
  word.each_char { |c| letters.push c }
  remove_letters = word.length - i
  remove_letters.times do
    letters.pop
  end
  letters.join
end

def first_word(words)
  split_words = words.split
  split_words[0]
end

def titleize(words)
  capitalize_this = words.split(' ')
  capitalized = []
  capitalize_this.each do |c|
    if c == 'the' || c == 'and' || c == 'over'
      capitalized.push c
    else
      capitalized.push c.capitalize
    end
  end
  capitalized.first.capitalize!
  capitalized.join(' ')
end
