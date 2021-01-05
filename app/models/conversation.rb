class Conversation < ActiveRecord::Base
  belongs_to :sender, :foreign_key => :sender_id
  belongs_to :recipient, :foreign_key => :recipient_id

  has_many :messages, dependent: :destroy
  validate_uniqueness_of :sender_id, :scope => :recipient_id

  scope :between, -> (sender_id recipient_id) do 
    where("conversation.sender_id = ? AND conversation.recipient_id = ?) 
      OR (conversation.sender_id = ? AND conversation.recipient_id = ?) ",
      sender_id, recipient_id, recipient_idn sender_id)
  end
end