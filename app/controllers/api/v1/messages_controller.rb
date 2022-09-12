class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: %i[show update destroy]

  # GET /messages
  def index
    @message = Message.order(Arel.sql('RANDOM()')).first

    render json: { message: @message.greeting }
  end
end
