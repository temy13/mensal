# namespace :rakuten do
#
#   task :answer_book_urls => :environment do
#     Answer.includes(:book).all.each do |a|
#       book = a.book
#       next if book.blank?
#       next if book.isbn13.blank?
#       r = RakutenWebService::Books::Book.search(isbn: book.isbn13).first
#       next if r.blank?
#       book.rakuten_affiliate_url = r.affiliate_url
#       book.save
#       sleep(1)
#     end
#   end
#
#   # task :all_books_urls => :environment do
#   #   Book.where(rakuten_affiliate_url: nil).each do |book|
#   #     next if book.isbn13.blank?
#   #     r = RakutenWebService::Books::Book.search(isbn: book.isbn13).first
#   #     next if r.blank?
#   #     book.rakuten_affiliate_url = r.affiliate_url
#   #     book.save
#   #     sleep(1)
#   #     p book
#   #   end
#   # end
#
#   task :info => :environment do
#     Book.where(rakuten_caption: nil).each do |book|
#       r = book.rakuten
#       next if r.blank?
#       book.rakuten_caption = r.item_caption
#       book.rakuten_genre_id = r.books_genre_id
#       book.rakuten_affiliate_url = r.affiliate_url
#       book.save
#       sleep(1)
#       p book
#     end
#   end
#
#   task :isbn13 => :environment do
#     Book.where(isbn13: nil).each do |book|
#       r = book.rakuten_maybe
#       next if r.blank?
#       book.rakuten_isbn13 = r.isbn
#       book.rakuten_title = r.title
#       book.save
#       sleep(1)
#       p book
#     end
#   end
#
#
#
# end
