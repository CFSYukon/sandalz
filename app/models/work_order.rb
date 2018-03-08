class WorkOrder < ApplicationRecord
  has_many :line_items
end
