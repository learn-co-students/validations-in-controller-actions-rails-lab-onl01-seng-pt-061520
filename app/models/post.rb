class Post < ActiveRecord::Base
    validates :title, presence: true
    validates_inclusion_of :category, in: %w( Fiction Non-Fiction ), on: :create, message: "extension %s is not included in the list"
    validates :content, length: {minimum:100}
end
