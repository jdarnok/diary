class WebsocketController < WebsocketRails::BaseController
  def new_message
    # Here we call the rails-websocket broadcast_message method
    PdfGenerator.perform_async(message)
  end
end
