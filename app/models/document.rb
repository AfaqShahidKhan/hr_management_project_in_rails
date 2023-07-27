class Document < ApplicationRecord
  belongs_to :employee

  validates :name, :doc_type, presence: true

end
