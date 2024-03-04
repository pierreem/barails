class ApplicationController < ActionController::Base

  around_action :choose_lang

  def choose_lang(&action)
    begin
      I18n.with_locale(request.env['HTTP_ACCEPT_LANGUAGE'].split('-')[0].to_sym, &action)
    rescue
      I18n.with_locale(I18n.default_locale, &action)
    end
  end
end
