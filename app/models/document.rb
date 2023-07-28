class Document < ApplicationRecord
  belongs_to :employee

  DOC_TYPES=['Worksheet','Marks','Security','Others'].freeze

  validates :name, :doc_type, presence: true

end
