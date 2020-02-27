=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
LemonWay Codegen version: 2.4.12

=end

require 'date'

module LemonWayClient
  class PaymentForm
    attr_accessor :wallet_ip

    attr_accessor :wallet_ua

    attr_accessor :amount_tot_range

    attr_accessor :amount_com

    attr_accessor :language

    attr_accessor :version

    attr_accessor :style

    # Atosv1 only: Link to a custom Atos CSS stylesheet.  The stylesheet should be publicly accessible via https
    attr_accessor :atos_style

    attr_accessor :notif_url

    # Reserve for future version
    attr_accessor :options

    attr_accessor :active

    attr_accessor :raison_sociale

    # Payment Form ID
    attr_accessor :id

    # Optional identity of the payment form. You shouldn't use special character here.
    attr_accessor :opt_id

    # payer account.  If this field is filled then the money reaches this wallet before arriving at the beneficiary wallet (via a transfer wallet to wallet)  note: Don't put the wallet \"sc\" here, it won't work. You cannot credit the wallet \"sc\" with a credit card.
    attr_accessor :account_payer

    # Beneficiary Account.  if this field is not filled then the end-user must to fill its value on the payment form. We recommend you to always fill it instead of your end-user.  note: Don't put the wallet \"sc\" here, it won't work. You cannot credit the wallet \"sc\" with a credit card.
    attr_accessor :account_receiver

    attr_accessor :comment

    # Url redirection after the payment procedure is successfully finished
    attr_accessor :return_url

    # Url redirection after the payment procedure is cancelled
    attr_accessor :cancel_url

    # Url redirection after the payment procedure is failed
    attr_accessor :error_url

    # Payer's first name.  If this field is not filled then the end-user have to fill it in the payment form.
    attr_accessor :first_name_payer

    # Payer's last name.  If this field is not filled then the end-user have to fill it in the payment form.
    attr_accessor :last_name_payer

    # Payer's email.  If this field is not filled then the end-user have to fill it in the payment form.
    attr_accessor :email_payer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'wallet_ip' => :'walletIp',
        :'wallet_ua' => :'walletUa',
        :'amount_tot_range' => :'amountTotRange',
        :'amount_com' => :'amountCom',
        :'language' => :'language',
        :'version' => :'version',
        :'style' => :'style',
        :'atos_style' => :'atosStyle',
        :'notif_url' => :'notifUrl',
        :'options' => :'options',
        :'active' => :'active',
        :'raison_sociale' => :'raisonSociale',
        :'id' => :'id',
        :'opt_id' => :'optId',
        :'account_payer' => :'accountPayer',
        :'account_receiver' => :'accountReceiver',
        :'comment' => :'comment',
        :'return_url' => :'returnUrl',
        :'cancel_url' => :'cancelUrl',
        :'error_url' => :'errorUrl',
        :'first_name_payer' => :'firstNamePayer',
        :'last_name_payer' => :'lastNamePayer',
        :'email_payer' => :'emailPayer'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'wallet_ip' => :'String',
        :'wallet_ua' => :'String',
        :'amount_tot_range' => :'String',
        :'amount_com' => :'String',
        :'language' => :'String',
        :'version' => :'String',
        :'style' => :'String',
        :'atos_style' => :'String',
        :'notif_url' => :'String',
        :'options' => :'String',
        :'active' => :'BOOLEAN',
        :'raison_sociale' => :'String',
        :'id' => :'String',
        :'opt_id' => :'String',
        :'account_payer' => :'String',
        :'account_receiver' => :'String',
        :'comment' => :'String',
        :'return_url' => :'String',
        :'cancel_url' => :'String',
        :'error_url' => :'String',
        :'first_name_payer' => :'String',
        :'last_name_payer' => :'String',
        :'email_payer' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'walletIp')
        self.wallet_ip = attributes[:'walletIp']
      end

      if attributes.has_key?(:'walletUa')
        self.wallet_ua = attributes[:'walletUa']
      end

      if attributes.has_key?(:'amountTotRange')
        self.amount_tot_range = attributes[:'amountTotRange']
      end

      if attributes.has_key?(:'amountCom')
        self.amount_com = attributes[:'amountCom']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'style')
        self.style = attributes[:'style']
      end

      if attributes.has_key?(:'atosStyle')
        self.atos_style = attributes[:'atosStyle']
      end

      if attributes.has_key?(:'notifUrl')
        self.notif_url = attributes[:'notifUrl']
      end

      if attributes.has_key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'raisonSociale')
        self.raison_sociale = attributes[:'raisonSociale']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'optId')
        self.opt_id = attributes[:'optId']
      end

      if attributes.has_key?(:'accountPayer')
        self.account_payer = attributes[:'accountPayer']
      end

      if attributes.has_key?(:'accountReceiver')
        self.account_receiver = attributes[:'accountReceiver']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'returnUrl')
        self.return_url = attributes[:'returnUrl']
      end

      if attributes.has_key?(:'cancelUrl')
        self.cancel_url = attributes[:'cancelUrl']
      end

      if attributes.has_key?(:'errorUrl')
        self.error_url = attributes[:'errorUrl']
      end

      if attributes.has_key?(:'firstNamePayer')
        self.first_name_payer = attributes[:'firstNamePayer']
      end

      if attributes.has_key?(:'lastNamePayer')
        self.last_name_payer = attributes[:'lastNamePayer']
      end

      if attributes.has_key?(:'emailPayer')
        self.email_payer = attributes[:'emailPayer']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          wallet_ip == o.wallet_ip &&
          wallet_ua == o.wallet_ua &&
          amount_tot_range == o.amount_tot_range &&
          amount_com == o.amount_com &&
          language == o.language &&
          version == o.version &&
          style == o.style &&
          atos_style == o.atos_style &&
          notif_url == o.notif_url &&
          options == o.options &&
          active == o.active &&
          raison_sociale == o.raison_sociale &&
          id == o.id &&
          opt_id == o.opt_id &&
          account_payer == o.account_payer &&
          account_receiver == o.account_receiver &&
          comment == o.comment &&
          return_url == o.return_url &&
          cancel_url == o.cancel_url &&
          error_url == o.error_url &&
          first_name_payer == o.first_name_payer &&
          last_name_payer == o.last_name_payer &&
          email_payer == o.email_payer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [wallet_ip, wallet_ua, amount_tot_range, amount_com, language, version, style, atos_style, notif_url, options, active, raison_sociale, id, opt_id, account_payer, account_receiver, comment, return_url, cancel_url, error_url, first_name_payer, last_name_payer, email_payer].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = LemonWayClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end