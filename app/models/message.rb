class Message
  include Mongoid::Document
  field :scope, type: String
  field :name, type: String
  field :body, type: String
  field :classes, type: Array
  field :created_at, type: Time
  field :sent, type: Time

  belongs_to :user

  default_scope order_by(created_at: 1)
end
