# frozen_string_literal: true

puts '====== Create dummy emails ======'

Email.create!(subject: 'No reply email',
              content: 'This is no reply email',
              from: ['noreply@example.com'],
              to: ['xyz@example.com', 'reply@example.com'])

Email.create!(subject: 'Default email',
              content: 'This is default email',
              from: ['default@example.com'],
              to: ['xyz@example.com', 'reply@example.com'])
