class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user, :title, :content
  has_many :note_tags
  has_many :tags, through: :note_tags
  belongs_to :user
end
