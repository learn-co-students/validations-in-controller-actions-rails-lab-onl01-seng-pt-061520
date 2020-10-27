class Author < ActiveRecord::Base
    validates :name, presence: true
    validates_uniqueness_of :email, on: :create, message: "must be unique"

end
