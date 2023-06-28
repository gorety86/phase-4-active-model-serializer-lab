class PostSerializer < ActiveModel::Serializer
  attributes :title, :content

  belongs_to :author, serializer: AuthorSerializer
  has_many :tags, serializer: TagSerializer

  def short_content
    "#{self.object.content[0..39]}..."
  end
end