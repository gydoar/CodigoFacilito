ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "codigofacilito.com",
  :user_name            => "codigofacilito.contacto",
  :password             => "facilito123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
