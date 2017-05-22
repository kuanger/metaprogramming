module AmazonWrapper
  def reviews_of(book)
    start = Time.now
    result = super
    time_taken = Time.now - start
    puts "reviews_of() took more than #{time_taken} seconds" if time_taken > 2
    result
  rescue
    puts 'reviews_of() failed'
    []
  end
end

class Amazon
  def reviews_of(book)
    sleep 3
    book
  end
end

Amazon.class_eval do
  prepend AmazonWrapper
end

amazon = Amazon.new
puts amazon.reviews_of('haha')
