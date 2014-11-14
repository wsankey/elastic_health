require 'elasticsearch/model'

class Hospital < ActiveRecord::Base
  self.inheritance_column = nil
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
Hospital.import
