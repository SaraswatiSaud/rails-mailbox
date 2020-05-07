json.extract! email, :id, :subject, :content, :from, :to, :settings, :created_at, :updated_at
json.url email_url(email, format: :json)
