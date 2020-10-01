class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at
  # has_many :note_tags
  has_many :tags
  
  belongs_to :user
end
