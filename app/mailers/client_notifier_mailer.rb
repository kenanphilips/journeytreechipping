class ClientNotifierMailer < ApplicationMailer
  default :from => 'journeygrad@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_submit_email(client)
    @client = client
    mail( :to => @client.email,
    :subject => 'Thank you!' )
    mail( :to => 'philipskenan@gmail.com',
    :subject => 'New Submission!')
  end
end
