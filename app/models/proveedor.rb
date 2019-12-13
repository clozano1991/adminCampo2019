class Proveedor < ApplicationRecord
  belongs_to :campo
  has_many :elemento_contables, :dependent => :destroy
end
 