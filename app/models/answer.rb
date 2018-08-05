# == Schema Information
#
# Table name: answers
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  question_id  :integer
#  content      :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  is_tweet     :boolean          default(FALSE)
#  is_anonymous :boolean          default(FALSE)
#  score        :integer          default(0)
#

class Answer < ApplicationRecord
  include QAModule

  belongs_to :question
  belongs_to :user
  has_many :likes
  validates :content, presence: true

  # def book
  #   @book = Book.find(self.book_id) if self.book_id.present? else nil
  #   @book
  # end



  def user_icon
    return self.user.icon unless self.is_anonymous
    path = "/assets/icons/" + rand(1..6).to_s
    path
  end

  def is_send_email
    self.question.user.is_send_email
  end


  def like_count
    Like.where(answer_id: self.id, like: true)
      .uniq{ |m| "#{m[:answer_id]}-#{m[:user_id]}" }
      .length
  end


end
