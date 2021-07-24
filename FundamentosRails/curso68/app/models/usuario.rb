class Usuario < ApplicationRecord
  belongs_to :rol
  # has_secure_password
end
