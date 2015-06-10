class InvoiceMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invoice_mailer.email_invoice.subject
  #
	def email_invoice(invoice)
		@invoice = invoice
		@sender = ENV['DEV_EMAIL']
		mail to: @invoice.user.email, subject: "Your Invoice from #{ENV['DEV_NAME']}"
	end
end
