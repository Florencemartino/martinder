class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def new
    users = User.all
    @users = users.where.not(id: current_user.id)
  end

  def create
    existing_conversation = Conversation.between(params[:sender_id], params[:recipient_id])
    if existing_conversation.present?
      @conversation = existing_conversation.first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    redirect_to conversation_messages_path(@conversation)
  end

  private

    def conversation_params
      params.permit(:sender_id, :recipient_id)
    end
end