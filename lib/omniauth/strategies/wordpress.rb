require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Wordpress < OmniAuth::Strategies::OAuth2
      # option :name, "wordpress"
      # option :authorize_options, [:scope]
      option :client_options, {
        :site => "https://public-api.wordpress.com",
        :authorize_url => "https://public-api.wordpress.com/oauth2/authorize",
        :token_url => "https://public-api.wordpress.com/oauth2/token"
      }

      # uid do
      #   raw_info["id"]
      # end

      # info do
      #   {
      #     id: raw_info["id"],
      #     email: raw_info["email"],
      #     login: raw_info["login"],
      #     bio: raw_info["bio"],
      #     location: raw_info["location"],
      #     gender: raw_info["gender"]
      #   }
      # end

      # def raw_info
      #   @raw_info ||= access_token.get('/v1/me.json').parsed["data"]
      # end
    end
  end
end