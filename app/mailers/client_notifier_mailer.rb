class ClientNotifierMailer < ApplicationMailer
  default :from => 'journeygrad@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  # def send_submit_email(client)
  #   @client = client
  #   mail( :to => @client.email && 'philipskenan@gmail.com',
  #   :subject => 'Thank you!' )
  #   # mail( :to => 'philipskenan@gmail.com',
  #   # :subject => 'New Submission!')
  # end

  def send_submit_email(client, template_name)
    @client = client
    mail(:to => @client.email, :template_name => template_name, :subject => 'Thank you!')
  end

  def admin_submit_email(client, template_name)
    @client = client
    mail(:to => 'philipskenan@gmail.com', :template_name => template_name, :subject => 'New Submission!')
  end
end
