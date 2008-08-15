class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :receivable, :polymorphic => true
  belongs_to :transactable, :polymorphic => true

  acts_as_double_polymorphic_join :transactables => [:sales, :gifts, :awards],
    :receivables => [:ownerships, :cash_receipts]

end
