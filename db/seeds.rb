# frozen_string_literal: true

puts '====== Create dummy emails ======'
Email.create!(subject: 'Test email',
              content: 'This is test email',
              from: 'test@example.com',
              to: 'xyz@example.com')

Email.create!(subject: 'No reply email',
              content: 'This is no reply email',
              from: 'noreply@example.com',
              to: 'xyz@example.com')

Email.create!(subject: 'Reply email',
              content: 'This is reply email',
              from: 'reply@example.com',
              to: 'xyz@example.com')

Email.create!(subject: 'Default email',
              content: 'This is default email',
              from: 'default@example.com',
              to: 'xyz@example.com')
