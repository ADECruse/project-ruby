def translate(word)
  sentence = word.split(' ')
  translated = []

  sentence.each do |a|
    letters = []
    a.each_char { |c| letters.push c }

    if %w(a e i o u).include?(a.chr)
      translated.push a + 'ay'
    elsif %w(a e i o u).include?(letters[1]) && a.chr != 'q'
      translated.push letters[1..5].join + a.chr + 'ay'
    elsif %w(a e i o u).include?(letters[2]) && letters[1] != 'q'
      translated.push letters[2..5].join + letters[0..1].join + 'ay'
    else
      translated.push letters[3..5].join + letters[0..2].join + 'ay'
    end

  end
  translated.join(' ')
end
