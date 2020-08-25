class User < ActiveRecord::Base
    has_many :notes 
    has_many :note_tags, through: :notes
    has_many :tags, through: :note_tags
end 