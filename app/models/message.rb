class Message < ActiveRecord::Base
  belongs_to :user

  def self.like(content)
    content.nil? ? [] : self.where(["content LIKE ?", "%#{content}%"])
  end
end
