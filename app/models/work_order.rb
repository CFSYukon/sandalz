class WorkOrder < ApplicationRecord
  has_many :line_item
end
