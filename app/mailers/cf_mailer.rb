class CfMailer < ActionMailer::Base
  default from: "contacto@codigofacilito.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.cf_mailer.ser_tutor.subject
  #
  def ser_tutor(data)
    @nombre = data[:nombre]
    @mail = data[:email]
    @body = data[:asunto]
    if(data[:url])
      @url = data[:url]
    end
    mail(:to => "projectdxv@gmail.com", :subject => "Contacto en Codigo Facilito")
  end
end
