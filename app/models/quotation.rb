class Quotation < ApplicationRecord
  monetize :real_cents, allow_nil: true
  monetize :us_dollar_cents, allow_nil: true
  monetize :aus_dollar_cents, allow_nil: true
  monetize :euro_cents, allow_nil: true
end
