# frozen_string_literal: true

require 'mail'

module FakeBounce
  # Email message with bounce message body.
  class Email
    class << self
      def build(email_from, email_to, type)
        email_identifier = 'Email to bounce.'
        mail = Mail.new(subject: email_identifier, from: email_from, to: email_to, body: email_identifier)
        mail['X-PM-Tag'] = type
        mail
      end
    end
  end
end
