class AdminNotifierMailer < ApplicationMailer
  default :from => 'journeygrad@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_admin_email(admin, client)
    @admin = admin
    @client = client
    mail( :to => @admin.email,
    :subject => 'New Tree Chipping Submission!' )
  end
end
