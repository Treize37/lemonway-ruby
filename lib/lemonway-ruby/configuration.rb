=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
LemonWay Codegen version: 2.4.12

=end

require 'uri'

module LemonWayClient
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Defines API keys used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    #
    # @example parameter name is "api_key", API key is "xxx" (e.g. "api_key=xxx" in query string)
    #   config.api_key['api_key'] = 'xxx'
    attr_accessor :api_key

    # Defines API key prefixes used with API Key authentications.
    #
    # @return [Hash] key: parameter name, value: API key prefix
    #
    # @example parameter name is "Authorization", API key prefix is "Token" (e.g. "Authorization: Token xxx" in headers)
    #   config.api_key_prefix['api_key'] = 'Token'
    attr_accessor :api_key_prefix

    # Defines the username used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :username

    # Defines the password used with HTTP basic authentication.
    #
    # @return [String]
    attr_accessor :password

    # Defines the access token (Bearer) used with OAuth2.
    attr_accessor :access_token

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to 0 (never times out).
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding

    attr_accessor :inject_format

    attr_accessor :force_ending_format

    attr_accessor :proxy

    def initialize
      @scheme = 'https'
      @host = ''
      @base_path = '/webservice'
      @api_key = {}
      @api_key_prefix = {}
      @timeout = 0
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @params_encoding = nil
      @cert_file = nil
      @key_file = nil
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
      @proxy = nil

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    def base_url
      url = "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '')
      URI.encode(url)
    end

    # Gets API key (with prefix if set).
    # @param [String] param_name the parameter name of API key auth
    def api_key_with_prefix(param_name)
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{@api_key[param_name]}"
      else
        @api_key[param_name]
      end
    end

    # Gets Basic Auth token string
    def basic_auth_token
      'Basic ' + ["#{username}:#{password}"].pack('m').delete("\r\n")
    end

    # Returns Auth Settings hash for api client.
    def auth_settings
      {
      }
    end
  end
end
