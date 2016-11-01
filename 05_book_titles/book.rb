class Book
  attr_reader :title

  def title=(new_book_title)
    corrected_book_title = new_book_title.split(' ')
    corrected_book_title.each do |c|
      unless %w(and of the a an in).include?(c) && c != corrected_book_title[0]
        c.capitalize!
      end
    end
    @title = corrected_book_title.join(' ')
  end
end
