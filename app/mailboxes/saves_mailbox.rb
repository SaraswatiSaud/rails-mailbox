# frozen_string_literal: true

# SavesMailbox
class SavesMailbox < ApplicationMailbox
  def process
    Email.create(subject: mail.subject,
                 content: mail.body.decoded,
                 from: mail.from,
                 to: mail.to)

    # Update front-end
    # MailboxChannel.broadcast_to 'mailbox', '<p>fjdsalfds</p>'
  end
end
