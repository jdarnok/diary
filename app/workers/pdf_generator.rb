class PdfGenerator
  include Sidekiq::Worker

  def perform(name)
    sleep(5)
    WebsocketRails[:pdf].trigger(:pdf_message,  "#{name} was completed")
  end
end
