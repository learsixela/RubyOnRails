class Autor < ApplicationRecord
    has_many :libros, dependent: :destroy
end
