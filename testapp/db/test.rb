require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
#	:host => '198.199.109.142',
	:username => 'cbtb',
	:password => 'password',
	:database => 'cbtb_test'
)

class Book < ActiveRecord::Base
def to_s
	puts "Condition: #{condition}\nISBN: #{isbn}\nTitle: #{title}\n"
end
end

Book.create(:condition => "very good", :isbn => 984, :title => "Biology")
Book.create(:condition => "excellent", :isbn => 980, :title => "Chemistry")

books = Book.all
books.each do |book|
	puts book.to_s
	puts "\n"
end
