module DataMapper
  class Property
    class DateTimeString < String
      def load(value)
        ::DateTime.parse(value)
      end

      def dump(value)
        value.to_s
      end
    end

    class MD5 < String
      key    true
      length 32

      accept_options :fields

      default lambda { |resource, property|
        Digest::MD5.hexdigest(property.options[:fields].join)
      }
    end
  end
end

class Post
  include DataMapper::Resource

  property :id, MD5, :fields => [ :author_id, :publish_time ]

  property :publish_time, DateTimeString
  property :title,        String
  property :content,      Text

  belongs_to :author, "User"

  before :create do
    self.publish_time = DateTime.now
  end
end
