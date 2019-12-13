class ElementoContable < ApplicationRecord
  belongs_to :campo
  belongs_to :proveedor, required: false
    has_many :elemento_contable_pagos, :dependent => :destroy
end


