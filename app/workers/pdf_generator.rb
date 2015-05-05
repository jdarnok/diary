class PdfGenerator
  include Sidekiq::Worker
  def perform(name)
    sleep(5)
    pdf = Prawn::Document.new
    WebsocketRails[:pdf].trigger(:pdf_message,  "#{name} was completed")
end
