# Omniauth::Moneybutton

Welcome to the omniauth-moneybutton gem.

Get started by signing up at https://moneybutton.com.
Then, on https://www.moneybutton.com/settings, click `Create new app`.

Note the following variables in your Money Button app.

* Client Identifier
* Client Secret
* Webhook URL
* Webhook Secret
* OAuth Identifier
* OAuth Redirect URL

## Installation

Add the .gem in your application's Gemfile:

```ruby
gem 'omniauth-moneybutton'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-moneybutton

## Usage

In a Rails app:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :moneybutton, {
    client_id: "OAUTH-ID-FROM-MONEYBUTTON",
    redirect_uri: "https://YOUR-APP-URL/OAUTH/CALLBACK-PATH",
    scope: "SCOPE1 SCOPE2"
  }
end
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/afomi/omniauth-moneybutton.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
