class Quotation < ApplicationRecord
  monetize :real_cents, allow_nil: true
  monetize :us_dollar_cents, allow_nil: true
  monetize :aus_dollar_cents, allow_nil: true
  monetize :euro_cents, allow_nil: true

  after_create_commit -> do
    broadcast_append_to :quotations
  end

  after_destroy_commit -> do
    broadcast_remove_to :quotations
  end
end
