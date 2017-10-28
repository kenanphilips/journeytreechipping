class ClientMailer < ApplicationMailer
  def submit_confirmation(client)
    @client = client
    mail(to: @client.email, subject: "Confirm your Submission!")
  end
end
