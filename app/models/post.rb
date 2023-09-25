class Post < ApplicationRecord
  enum status: {
    draft: 0,
    published: 1,
    archived: 2,
    inappropriate: 3,
  }

  belongs_to :user

  has_rich_text :body

  has_one_attached :media do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
    attachable.variant :medium, resize_to_limit: [600, 600]
  end
end


# rascunho, publicado, arquivado, inapropriado
