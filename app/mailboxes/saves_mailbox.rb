# frozen_string_literal: true

# SavesMailbox
class SavesMailbox < ApplicationMailbox
  def process
    Email.create(subject: mail.subject,
                 content: mail.body.decoded,
                 from: mail.from,
                 to: mail.to)
  end
end
