class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    headers['Access-Control-Allow-Origin'] = '*'

    @message = Message.new
  end

  def create
    headers['Access-Control-Allow-Origin'] = '*'
    @message = Message.create message_params
    text = @message.message_content.upcase
    # @message.created_at = @message.created_at.strftime('%d %b %Y %H:%M:%S')
    # client = MQTT::Client.connect('mqtt://homeAssistant:4HyIJ02ofOYqWrGkcQ6s@m12.cloudmqtt.com', 19070)
    MQTT::Client.connect('mqtt://breelamp:ZbMY6$T0*2y0@192.168.0.162') do |c|
        c.publish('brookeledmatrix', text)
      end
      # MQTT::Client.connect('mqtt://homeAssistant:4HyIJ02ofOYqWrGkcQ6s@m12.cloudmqtt.com', 19070) do |c|
      #     c.publish('brookeledmatrix', text)
      #   end

      render json: @message
      # redirect_to messages_path

  end

  def index
    headers['Access-Control-Allow-Origin'] = '*'

    messages = Message.all
    sortedmessages = messages.sort_by { |msg| [msg.created_at] }.reverse
    @messages = sortedmessages
    render json: Message.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def message_params
    params.require(:message).permit(:message_content)
  end
  end
