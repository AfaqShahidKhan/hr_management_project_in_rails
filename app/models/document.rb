class Document < ApplicationRecord
  belongs_to :employee


  has_one_attached :image 

  DOC_TYPES=['Worksheet','Marks','Security','Others'].freeze

  validates :name, :doc_type, presence: true

end
