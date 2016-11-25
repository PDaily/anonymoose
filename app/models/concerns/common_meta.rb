module CommonMeta
  extend ActiveSupport::Concern
  included do
    field :title, :type => String
    field :body, :type => String
    field :username, :type => String
    field :likes, :type => Integer
    field :dislikes, :type => Integer
  end
end
