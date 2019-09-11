require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Moneybutton < OmniAuth::Strategies::OAuth2

      option :client_options, {
        site: 'https://www.moneybutton.com',
        authorize_url: 'https://www.moneybutton.com/oauth/v1/authorize?response_type=code',
        token_url: 'https://www.moneybutton.com/oauth/v1/token'
      }

      info do
        {
          id: raw_info["data"]["attributes"]["id"],
          name: raw_info["data"]["attributes"]["name"],
          provider: name
        }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get(identity_path).body)
      end

      def identity_path
        '/api/v1/auth/user_identity'
      end


      private

      def callback_url
        full_host + script_name + callback_path
      end

    end
  end
end
