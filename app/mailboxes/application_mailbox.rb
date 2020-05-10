# frozen_string_literal: true

#Application Mailbox
class ApplicationMailbox < ActionMailbox::Base
  routing all: :saves
end
