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

    MQTT::Client.connect('mqtt://breelamp:ZbMY6$T0*2y0@192.168.0.162') do |c|
        c.publish('brookeledmatrix', text)
      end



      ####     ALTERNATIVE SERVER OPTIONS - CURRENTLY NOT IN USE
      # MQTT::Client.connect('mqtt://homeAssistant:4HyIJ02ofOYqWrGkcQ6s@m12.cloudmqtt.com', 19070) do |c|
      #     c.publish('brookeledmatrix', text)
      #   end

       # MQTT::Client.connect(
       #   host: 'a1zgckqipkzc05-ats.iot.ap-southeast-2.amazonaws.com', # Your AWS IoT host
       #   port: 8883,
       #   ssl: true,
       #   cert_file: File.absolute_path('app/assets/Server-info/LED_Matrix_Server.cert.pem'),
       #   key_file: File.absolute_path("app/assets/Server-info/LED_Matrix_Server.private.key"),
       #   ca_file: File.absolute_path("app/assets/Server-info/root-CA.crt")
       # )  do |c|
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
    render json: @messages
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
