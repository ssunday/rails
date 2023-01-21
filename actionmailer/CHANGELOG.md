*   `assert_emails` now returns the emails that were sent.

    This makes it easier to do further analysis on those emails:

    ```ruby
    def test_emails_more_thoroughly
      email = assert_emails 1 do
        ContactMailer.welcome.deliver_now
      end
      assert_email "Hi there", email.subject

      emails = assert_emails 2 do
        ContactMailer.welcome.deliver_now
        ContactMailer.welcome.deliver_later
      end
      assert_email "Hi there", emails.first.subject
    end
    ```

    *Alex Ghiculescu*

*   Added ability to download `.eml` file for the email preview.

    *Igor Kasyanchuk*

*   Support multiple preview paths for mailers.

    Option `config.action_mailer.preview_path` is deprecated in favor of
    `config.action_mailer.preview_paths`. Appending paths to this configuration option
    will cause those paths to be used in the search for mailer previews.

    *fatkodima*

Please check [7-0-stable](https://github.com/rails/rails/blob/7-0-stable/actionmailer/CHANGELOG.md) for previous changes.
