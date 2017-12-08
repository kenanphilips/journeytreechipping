class AdminNotifierMailer < ApplicationMailer
  default :from => 'journeygrad@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def admin_submit_email
    mail( :to => "philipskenan@gmail.com",
    :subject => 'New Submission!' )
  end
end
