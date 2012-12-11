## mailcatcher

### Installation

```bash
λ gem install mailcatcher
λ mailcatcher 
Starting MailCatcher
==> smtp://127.0.0.1:1025
==> http://127.0.0.1:1080
*** MailCatcher runs as a daemon by default. Go to the web interface to quit.
```

```ruby
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = { :address => "localhost", :port => 1025 }
```

### Opinion

+ it works
+ it keeps all emails
- it keeps all emails (has to be cleared from time to time) 
+ HTML, Plain text and Source preview
+ Search
- Has to be run standalone

## letter_opener

### Installation ###

```ruby
gem "letter_opener", :group => :development

config.action_mailer.delivery_method = :letter_opener
```

### Opinion ###

+ it works
+ it automatically opens sent email in browser
+ HTML and Plan text preview
- Can't see previous emails
+ No need to run standalone service

## inbox ##

### Installation ###

```ruby
gem "inbox", :group => :development

config.action_mailer.delivery_method = :inbox

Rails.application.routes.draw do
  mount Inbox::Engine => "/inbox"
end
```

### Opinion ###

- It's ugly
- Requires routes modification
- undefined method `multipart?' for nil:NilClass when browsing
- Requires visiting http://app.dev/inbox/<email>/emails for list of emails


