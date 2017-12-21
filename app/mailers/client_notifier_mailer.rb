class ClientNotifierMailer < ApplicationMailer
  default :from => 'journeygrad@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_submit_email(client)
    @client = client
    mail(:to => @client.email, :subject => 'Tree Chipping', :cc => 'journeygrad@gmail.com')
  end
end
