class Note < ActiveRecord::Base
    has_many :note_tags
    has_many :tags, through: :note_tags
    belongs_to :user

end 