=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module SwaggerClient
  class RegisterIBANExtendedInput
    # Payment account ID.
    attr_accessor :wallet

    # Account type.  0 = Other.  1 = IBAN.  2 = BBAN/RIB.
    attr_accessor :account_type

    # Account holder name.
    attr_accessor :holder_name

    # Account number. Its format depends on the account type.
    attr_accessor :account_number

    # 2 chars ISO country code.
    attr_accessor :holder_country

    # BIC/SWIFT code.  If not empty, it will be used to identify the beneficiary bank. This is the best way to identify the bank.
    attr_accessor :bic_code

    # Name of the Bank (and the address). Only use this if you don't have the BIC/SWIFT code.  If both this and BIC/SWIFT code are filled, the BIC/SWIFT code will be used unless something is wrong with it.  If you don't know the BIC/SWIFT code of the bank, you can try to give the bank ID.   The bank ID format will be as follow:  1. AU + 6c num (Australia).  2. CC + 9c num (Canada).  3. CH + 6c num (CHIPS USA).  4. CP + 4c num (CHIPS USA).  5. FW + 9c num (code ABA Fedwire USA).  6. HK + 3c num (Hong Kong).  7. IN +11c alpha-num (India).  8. NZ + 6c num (New Zeland).
    attr_accessor :bank_name

    # 2 chars ISO country code.
    attr_accessor :bank_country

    # BIC/SWIFT code of the intermediary bank, if there is an intermediary bank.
    attr_accessor :intermediary_bic_code

    # Name of intermediary bank. Only fill this if BIC/SWIFT code of the intermediary bank is empty.
    attr_accessor :intermediary_bank_name

    # 2 chars ISO country code.
    attr_accessor :intermediary_bank_country

    # Reason for new IBAN if another IBAN is already linked to the wallet.
    attr_accessor :comment

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'wallet' => :'wallet',
        :'account_type' => :'accountType',
        :'holder_name' => :'holderName',
        :'account_number' => :'accountNumber',
        :'holder_country' => :'holderCountry',
        :'bic_code' => :'bicCode',
        :'bank_name' => :'bankName',
        :'bank_country' => :'bankCountry',
        :'intermediary_bic_code' => :'intermediaryBicCode',
        :'intermediary_bank_name' => :'intermediaryBankName',
        :'intermediary_bank_country' => :'intermediaryBankCountry',
        :'comment' => :'comment'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'wallet' => :'String',
        :'account_type' => :'Integer',
        :'holder_name' => :'String',
        :'account_number' => :'String',
        :'holder_country' => :'String',
        :'bic_code' => :'String',
        :'bank_name' => :'String',
        :'bank_country' => :'String',
        :'intermediary_bic_code' => :'String',
        :'intermediary_bank_name' => :'String',
        :'intermediary_bank_country' => :'String',
        :'comment' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'wallet')
        self.wallet = attributes[:'wallet']
      end

      if attributes.has_key?(:'accountType')
        self.account_type = attributes[:'accountType']
      end

      if attributes.has_key?(:'holderName')
        self.holder_name = attributes[:'holderName']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'holderCountry')
        self.holder_country = attributes[:'holderCountry']
      end

      if attributes.has_key?(:'bicCode')
        self.bic_code = attributes[:'bicCode']
      end

      if attributes.has_key?(:'bankName')
        self.bank_name = attributes[:'bankName']
      end

      if attributes.has_key?(:'bankCountry')
        self.bank_country = attributes[:'bankCountry']
      end

      if attributes.has_key?(:'intermediaryBicCode')
        self.intermediary_bic_code = attributes[:'intermediaryBicCode']
      end

      if attributes.has_key?(:'intermediaryBankName')
        self.intermediary_bank_name = attributes[:'intermediaryBankName']
      end

      if attributes.has_key?(:'intermediaryBankCountry')
        self.intermediary_bank_country = attributes[:'intermediaryBankCountry']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @wallet.nil?
        invalid_properties.push('invalid value for "wallet", wallet cannot be nil.')
      end

      if @wallet.to_s.length > 256
        invalid_properties.push('invalid value for "wallet", the character length must be smaller than or equal to 256.')
      end

      if @wallet.to_s.length < 0
        invalid_properties.push('invalid value for "wallet", the character length must be great than or equal to 0.')
      end

      if @account_type.nil?
        invalid_properties.push('invalid value for "account_type", account_type cannot be nil.')
      end

      if @holder_name.nil?
        invalid_properties.push('invalid value for "holder_name", holder_name cannot be nil.')
      end

      if @holder_name.to_s.length > 35
        invalid_properties.push('invalid value for "holder_name", the character length must be smaller than or equal to 35.')
      end

      if @holder_name.to_s.length < 0
        invalid_properties.push('invalid value for "holder_name", the character length must be great than or equal to 0.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @account_number.to_s.length > 34
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 34.')
      end

      if @account_number.to_s.length < 0
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 0.')
      end

      if @holder_country.nil?
        invalid_properties.push('invalid value for "holder_country", holder_country cannot be nil.')
      end

      if @holder_country.to_s.length > 2
        invalid_properties.push('invalid value for "holder_country", the character length must be smaller than or equal to 2.')
      end

      if @holder_country.to_s.length < 2
        invalid_properties.push('invalid value for "holder_country", the character length must be great than or equal to 2.')
      end

      if @bic_code.nil?
        invalid_properties.push('invalid value for "bic_code", bic_code cannot be nil.')
      end

      if @bic_code.to_s.length > 35
        invalid_properties.push('invalid value for "bic_code", the character length must be smaller than or equal to 35.')
      end

      if @bic_code.to_s.length < 0
        invalid_properties.push('invalid value for "bic_code", the character length must be great than or equal to 0.')
      end

      if !@bank_name.nil? && @bank_name.to_s.length > 140
        invalid_properties.push('invalid value for "bank_name", the character length must be smaller than or equal to 140.')
      end

      if !@bank_name.nil? && @bank_name.to_s.length < 0
        invalid_properties.push('invalid value for "bank_name", the character length must be great than or equal to 0.')
      end

      if @bank_country.nil?
        invalid_properties.push('invalid value for "bank_country", bank_country cannot be nil.')
      end

      if @bank_country.to_s.length > 2
        invalid_properties.push('invalid value for "bank_country", the character length must be smaller than or equal to 2.')
      end

      if @bank_country.to_s.length < 2
        invalid_properties.push('invalid value for "bank_country", the character length must be great than or equal to 2.')
      end

      if !@intermediary_bic_code.nil? && @intermediary_bic_code.to_s.length > 11
        invalid_properties.push('invalid value for "intermediary_bic_code", the character length must be smaller than or equal to 11.')
      end

      if !@intermediary_bic_code.nil? && @intermediary_bic_code.to_s.length < 0
        invalid_properties.push('invalid value for "intermediary_bic_code", the character length must be great than or equal to 0.')
      end

      if !@intermediary_bank_name.nil? && @intermediary_bank_name.to_s.length > 140
        invalid_properties.push('invalid value for "intermediary_bank_name", the character length must be smaller than or equal to 140.')
      end

      if !@intermediary_bank_name.nil? && @intermediary_bank_name.to_s.length < 0
        invalid_properties.push('invalid value for "intermediary_bank_name", the character length must be great than or equal to 0.')
      end

      if !@intermediary_bank_country.nil? && @intermediary_bank_country.to_s.length > 2
        invalid_properties.push('invalid value for "intermediary_bank_country", the character length must be smaller than or equal to 2.')
      end

      if !@intermediary_bank_country.nil? && @intermediary_bank_country.to_s.length < 2
        invalid_properties.push('invalid value for "intermediary_bank_country", the character length must be great than or equal to 2.')
      end

      if !@comment.nil? && @comment.to_s.length > 512
        invalid_properties.push('invalid value for "comment", the character length must be smaller than or equal to 512.')
      end

      if !@comment.nil? && @comment.to_s.length < 1
        invalid_properties.push('invalid value for "comment", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @wallet.nil?
      return false if @wallet.to_s.length > 256
      return false if @wallet.to_s.length < 0
      return false if @account_type.nil?
      account_type_validator = EnumAttributeValidator.new('Integer', ['0', '1', '2'])
      return false unless account_type_validator.valid?(@account_type)
      return false if @holder_name.nil?
      return false if @holder_name.to_s.length > 35
      return false if @holder_name.to_s.length < 0
      return false if @account_number.nil?
      return false if @account_number.to_s.length > 34
      return false if @account_number.to_s.length < 0
      return false if @holder_country.nil?
      return false if @holder_country.to_s.length > 2
      return false if @holder_country.to_s.length < 2
      return false if @bic_code.nil?
      return false if @bic_code.to_s.length > 35
      return false if @bic_code.to_s.length < 0
      return false if !@bank_name.nil? && @bank_name.to_s.length > 140
      return false if !@bank_name.nil? && @bank_name.to_s.length < 0
      return false if @bank_country.nil?
      return false if @bank_country.to_s.length > 2
      return false if @bank_country.to_s.length < 2
      return false if !@intermediary_bic_code.nil? && @intermediary_bic_code.to_s.length > 11
      return false if !@intermediary_bic_code.nil? && @intermediary_bic_code.to_s.length < 0
      return false if !@intermediary_bank_name.nil? && @intermediary_bank_name.to_s.length > 140
      return false if !@intermediary_bank_name.nil? && @intermediary_bank_name.to_s.length < 0
      return false if !@intermediary_bank_country.nil? && @intermediary_bank_country.to_s.length > 2
      return false if !@intermediary_bank_country.nil? && @intermediary_bank_country.to_s.length < 2
      return false if !@comment.nil? && @comment.to_s.length > 512
      return false if !@comment.nil? && @comment.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] wallet Value to be assigned
    def wallet=(wallet)
      if wallet.nil?
        fail ArgumentError, 'wallet cannot be nil'
      end

      if wallet.to_s.length > 256
        fail ArgumentError, 'invalid value for "wallet", the character length must be smaller than or equal to 256.'
      end

      if wallet.to_s.length < 0
        fail ArgumentError, 'invalid value for "wallet", the character length must be great than or equal to 0.'
      end

      @wallet = wallet
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type)
      validator = EnumAttributeValidator.new('Integer', ['0', '1', '2'])
      unless validator.valid?(account_type)
        fail ArgumentError, 'invalid value for "account_type", must be one of #{validator.allowable_values}.'
      end
      @account_type = account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] holder_name Value to be assigned
    def holder_name=(holder_name)
      if holder_name.nil?
        fail ArgumentError, 'holder_name cannot be nil'
      end

      if holder_name.to_s.length > 35
        fail ArgumentError, 'invalid value for "holder_name", the character length must be smaller than or equal to 35.'
      end

      if holder_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "holder_name", the character length must be great than or equal to 0.'
      end

      @holder_name = holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      if account_number.to_s.length > 34
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 34.'
      end

      if account_number.to_s.length < 0
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 0.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] holder_country Value to be assigned
    def holder_country=(holder_country)
      if holder_country.nil?
        fail ArgumentError, 'holder_country cannot be nil'
      end

      if holder_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "holder_country", the character length must be smaller than or equal to 2.'
      end

      if holder_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "holder_country", the character length must be great than or equal to 2.'
      end

      @holder_country = holder_country
    end

    # Custom attribute writer method with validation
    # @param [Object] bic_code Value to be assigned
    def bic_code=(bic_code)
      if bic_code.nil?
        fail ArgumentError, 'bic_code cannot be nil'
      end

      if bic_code.to_s.length > 35
        fail ArgumentError, 'invalid value for "bic_code", the character length must be smaller than or equal to 35.'
      end

      if bic_code.to_s.length < 0
        fail ArgumentError, 'invalid value for "bic_code", the character length must be great than or equal to 0.'
      end

      @bic_code = bic_code
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if !bank_name.nil? && bank_name.to_s.length > 140
        fail ArgumentError, 'invalid value for "bank_name", the character length must be smaller than or equal to 140.'
      end

      if !bank_name.nil? && bank_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "bank_name", the character length must be great than or equal to 0.'
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_country Value to be assigned
    def bank_country=(bank_country)
      if bank_country.nil?
        fail ArgumentError, 'bank_country cannot be nil'
      end

      if bank_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "bank_country", the character length must be smaller than or equal to 2.'
      end

      if bank_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "bank_country", the character length must be great than or equal to 2.'
      end

      @bank_country = bank_country
    end

    # Custom attribute writer method with validation
    # @param [Object] intermediary_bic_code Value to be assigned
    def intermediary_bic_code=(intermediary_bic_code)
      if !intermediary_bic_code.nil? && intermediary_bic_code.to_s.length > 11
        fail ArgumentError, 'invalid value for "intermediary_bic_code", the character length must be smaller than or equal to 11.'
      end

      if !intermediary_bic_code.nil? && intermediary_bic_code.to_s.length < 0
        fail ArgumentError, 'invalid value for "intermediary_bic_code", the character length must be great than or equal to 0.'
      end

      @intermediary_bic_code = intermediary_bic_code
    end

    # Custom attribute writer method with validation
    # @param [Object] intermediary_bank_name Value to be assigned
    def intermediary_bank_name=(intermediary_bank_name)
      if !intermediary_bank_name.nil? && intermediary_bank_name.to_s.length > 140
        fail ArgumentError, 'invalid value for "intermediary_bank_name", the character length must be smaller than or equal to 140.'
      end

      if !intermediary_bank_name.nil? && intermediary_bank_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "intermediary_bank_name", the character length must be great than or equal to 0.'
      end

      @intermediary_bank_name = intermediary_bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] intermediary_bank_country Value to be assigned
    def intermediary_bank_country=(intermediary_bank_country)
      if !intermediary_bank_country.nil? && intermediary_bank_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "intermediary_bank_country", the character length must be smaller than or equal to 2.'
      end

      if !intermediary_bank_country.nil? && intermediary_bank_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "intermediary_bank_country", the character length must be great than or equal to 2.'
      end

      @intermediary_bank_country = intermediary_bank_country
    end

    # Custom attribute writer method with validation
    # @param [Object] comment Value to be assigned
    def comment=(comment)
      if !comment.nil? && comment.to_s.length > 512
        fail ArgumentError, 'invalid value for "comment", the character length must be smaller than or equal to 512.'
      end

      if !comment.nil? && comment.to_s.length < 1
        fail ArgumentError, 'invalid value for "comment", the character length must be great than or equal to 1.'
      end

      @comment = comment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          wallet == o.wallet &&
          account_type == o.account_type &&
          holder_name == o.holder_name &&
          account_number == o.account_number &&
          holder_country == o.holder_country &&
          bic_code == o.bic_code &&
          bank_name == o.bank_name &&
          bank_country == o.bank_country &&
          intermediary_bic_code == o.intermediary_bic_code &&
          intermediary_bank_name == o.intermediary_bank_name &&
          intermediary_bank_country == o.intermediary_bank_country &&
          comment == o.comment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [wallet, account_type, holder_name, account_number, holder_country, bic_code, bank_name, bank_country, intermediary_bic_code, intermediary_bank_name, intermediary_bank_country, comment].hash
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
        temp_model = SwaggerClient.const_get(type).new
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
