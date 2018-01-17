json.extract! work_order, :id, :started_on, :closed_on, :notes, :status, :created_at, :updated_at
json.url work_order_url(work_order, format: :json)
