class PagoItem < ApplicationRecord
  belongs_to :empleado_pago, optional: true
end
