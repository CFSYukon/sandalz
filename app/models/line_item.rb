class LineItem < ApplicationRecord
  belongs_to :sku
  belongs_to :work_order
end
