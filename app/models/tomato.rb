class Tomato
  include Mongoid::Document
  field :kind, :type => String
  field :name, :type => String
  field :body, :type => String
  field :uuid, :type => String
  field :effective_date, :type => Time
  field :active, :type => Boolean
end
