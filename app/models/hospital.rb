require 'elasticsearch/model'

class Hospital < ActiveRecord::Base
  self.inheritance_column = nil
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search(query)
    __elasticsearch__.search({
      highlight: {
        pre_tags: ['<strong>'],
        post_tags: ['</strong>'],
        fields: {
          name: {},
          complaint: {}
        }
      }
    })
  end
end
Hospital.import
