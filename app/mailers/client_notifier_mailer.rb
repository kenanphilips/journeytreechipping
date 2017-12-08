class ClientNotifierMailer < ApplicationMailer
  default :from => 'journeygrad@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_submit_email(client, admin)
    @client = client
    @admin = admin
    mail( :to => @client.email, :template_name => "send_submit_email", :subject => 'Thank you!' )
    mail( :to => @admin.email, :template_name => "admin_submit_email", :subject => 'New Submission!' )
  end
end
