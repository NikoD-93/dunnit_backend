class NoteTagsSerializer < ActiveModel::Serializer
  attributes :id, :tag, :note 
  belongs_to :tag
  belongs_to :note

end
