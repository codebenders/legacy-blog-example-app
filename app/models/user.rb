class User
  include DataMapper::Resource

  property :id,    Serial
  property :name,  String
  property :email, String

  has n, :posts, :child_key => :author_id
end
