=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module SwaggerClient
  class RegisterLegalAccountInput
    # Company informations
    attr_accessor :company

    # Payment account ID that you use to identify the customer.Choose your unique number.<br />  NOTE : If you plan to credit payments accounts  by fund transfer, please use short alphanumeric payment account identifiers (max 20 char.).   Your customers will have to write their payment account identifier in the transfer label/comment, a label of more that 20 characters could be cut when passing the the banking system.
    attr_accessor :account_id

    # Unique Email.
    attr_accessor :email

    # CLIENT title.
    attr_accessor :title

    # CLIENT first name.
    attr_accessor :first_name

    # CLIENT last name.
    attr_accessor :last_name

    # Client adresse
    attr_accessor :adresse

    # Client Birth informations
    attr_accessor :birth

    # Nationality of the client, using ISO 3166-1 alpha-3 format.  Please separate multiple nationalities with a comma.
    attr_accessor :nationality

    # Phone number with MSISDN format: international number with country code without \"00\" neither \"+\".
    attr_accessor :phone_number

    # Mobile phone number with MSISDN format: international number with country code without \"00\" neither \"+\".   This will be used by default when eletronically signing documents.
    attr_accessor :mobile_number

    # For crowdfunding/loan platforms, indicates if the wallet is created for a debtor.
    attr_accessor :is_debtor

    # Indicates if the payment account is created for a payer or a beneficiary:  1. Empty: unknown status (default).  2. 1: Payer.  3. 2: Beneficiary.
    attr_accessor :payer_or_beneficiary

    # Indicates if the payment account is for a one-time customer.   If yes, the payment account will be created with status 14, allowing only one payment.   The maximum amount will be defined with Lemon Way.
    attr_accessor :is_one_time_customer_account

    # **This option is available depending on your contract.**  True, in case this option is enabled in your contract.  Otherwise it will be considered a client wallet.
    attr_accessor :is_technical_account

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company' => :'company',
        :'account_id' => :'accountId',
        :'email' => :'email',
        :'title' => :'title',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'adresse' => :'adresse',
        :'birth' => :'birth',
        :'nationality' => :'nationality',
        :'phone_number' => :'phoneNumber',
        :'mobile_number' => :'mobileNumber',
        :'is_debtor' => :'isDebtor',
        :'payer_or_beneficiary' => :'payerOrBeneficiary',
        :'is_one_time_customer_account' => :'isOneTimeCustomerAccount',
        :'is_technical_account' => :'isTechnicalAccount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'company' => :'Company',
        :'account_id' => :'String',
        :'email' => :'String',
        :'title' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'adresse' => :'Address',
        :'birth' => :'Birth',
        :'nationality' => :'String',
        :'phone_number' => :'String',
        :'mobile_number' => :'String',
        :'is_debtor' => :'BOOLEAN',
        :'payer_or_beneficiary' => :'Integer',
        :'is_one_time_customer_account' => :'BOOLEAN',
        :'is_technical_account' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'adresse')
        self.adresse = attributes[:'adresse']
      end

      if attributes.has_key?(:'birth')
        self.birth = attributes[:'birth']
      end

      if attributes.has_key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'mobileNumber')
        self.mobile_number = attributes[:'mobileNumber']
      end

      if attributes.has_key?(:'isDebtor')
        self.is_debtor = attributes[:'isDebtor']
      end

      if attributes.has_key?(:'payerOrBeneficiary')
        self.payer_or_beneficiary = attributes[:'payerOrBeneficiary']
      end

      if attributes.has_key?(:'isOneTimeCustomerAccount')
        self.is_one_time_customer_account = attributes[:'isOneTimeCustomerAccount']
      end

      if attributes.has_key?(:'isTechnicalAccount')
        self.is_technical_account = attributes[:'isTechnicalAccount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @company.nil?
        invalid_properties.push('invalid value for "company", company cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_id.to_s.length > 100
        invalid_properties.push('invalid value for "account_id", the character length must be smaller than or equal to 100.')
      end

      if @account_id.to_s.length < 1
        invalid_properties.push('invalid value for "account_id", the character length must be great than or equal to 1.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 256
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 256.')
      end

      if @email.to_s.length < 6
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 6.')
      end

      if @email !~ Regexp.new(/^(([^<>()[\\]\\\\.,;:\\s@\\\"]+(\\.[^<>()[\\]\\\\.,;:\\s@\\\"]+)*)|(\\\".+\\\"))@((\\[\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/)
        invalid_properties.push('invalid value for "email", must conform to the pattern /^(([^<>()[\\]\\\\.,;:\\s@\\\"]+(\\.[^<>()[\\]\\\\.,;:\\s@\\\"]+)*)|(\\\".+\\\"))@((\\[\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/.')
      end

      if !@title.nil? && @title.to_s.length > 1
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 1.')
      end

      if !@title.nil? && @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if !@title.nil? && @title !~ Regexp.new(/^(M|F|J|U)$/)
        invalid_properties.push('invalid value for "title", must conform to the pattern /^(M|F|J|U)$/.')
      end

      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @first_name.to_s.length > 256
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 256.')
      end

      if @first_name.to_s.length < 2
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 2.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @last_name.to_s.length > 256
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 256.')
      end

      if @last_name.to_s.length < 2
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 2.')
      end

      if @nationality.nil?
        invalid_properties.push('invalid value for "nationality", nationality cannot be nil.')
      end

      if @nationality.to_s.length > 19
        invalid_properties.push('invalid value for "nationality", the character length must be smaller than or equal to 19.')
      end

      if @nationality.to_s.length < 0
        invalid_properties.push('invalid value for "nationality", the character length must be great than or equal to 0.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 30
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 30.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length < 6
        invalid_properties.push('invalid value for "phone_number", the character length must be great than or equal to 6.')
      end

      if !@phone_number.nil? && @phone_number !~ Regexp.new(/^\\d{6,30}$/)
        invalid_properties.push('invalid value for "phone_number", must conform to the pattern /^\\d{6,30}$/.')
      end

      if !@mobile_number.nil? && @mobile_number.to_s.length > 30
        invalid_properties.push('invalid value for "mobile_number", the character length must be smaller than or equal to 30.')
      end

      if !@mobile_number.nil? && @mobile_number.to_s.length < 6
        invalid_properties.push('invalid value for "mobile_number", the character length must be great than or equal to 6.')
      end

      if !@mobile_number.nil? && @mobile_number !~ Regexp.new(/^\\d{6,30}$/)
        invalid_properties.push('invalid value for "mobile_number", must conform to the pattern /^\\d{6,30}$/.')
      end

      if @payer_or_beneficiary.nil?
        invalid_properties.push('invalid value for "payer_or_beneficiary", payer_or_beneficiary cannot be nil.')
      end

      if @payer_or_beneficiary > 2
        invalid_properties.push('invalid value for "payer_or_beneficiary", must be smaller than or equal to 2.')
      end

      if @payer_or_beneficiary < 1
        invalid_properties.push('invalid value for "payer_or_beneficiary", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @company.nil?
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 100
      return false if @account_id.to_s.length < 1
      return false if @email.nil?
      return false if @email.to_s.length > 256
      return false if @email.to_s.length < 6
      return false if @email !~ Regexp.new(/^(([^<>()[\\]\\\\.,;:\\s@\\\"]+(\\.[^<>()[\\]\\\\.,;:\\s@\\\"]+)*)|(\\\".+\\\"))@((\\[\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/)
      return false if !@title.nil? && @title.to_s.length > 1
      return false if !@title.nil? && @title.to_s.length < 1
      return false if !@title.nil? && @title !~ Regexp.new(/^(M|F|J|U)$/)
      return false if @first_name.nil?
      return false if @first_name.to_s.length > 256
      return false if @first_name.to_s.length < 2
      return false if @last_name.nil?
      return false if @last_name.to_s.length > 256
      return false if @last_name.to_s.length < 2
      return false if @nationality.nil?
      return false if @nationality.to_s.length > 19
      return false if @nationality.to_s.length < 0
      return false if !@phone_number.nil? && @phone_number.to_s.length > 30
      return false if !@phone_number.nil? && @phone_number.to_s.length < 6
      return false if !@phone_number.nil? && @phone_number !~ Regexp.new(/^\\d{6,30}$/)
      return false if !@mobile_number.nil? && @mobile_number.to_s.length > 30
      return false if !@mobile_number.nil? && @mobile_number.to_s.length < 6
      return false if !@mobile_number.nil? && @mobile_number !~ Regexp.new(/^\\d{6,30}$/)
      return false if @payer_or_beneficiary.nil?
      return false if @payer_or_beneficiary > 2
      return false if @payer_or_beneficiary < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      if account_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "account_id", the character length must be smaller than or equal to 100.'
      end

      if account_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_id", the character length must be great than or equal to 1.'
      end

      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 256
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 256.'
      end

      if email.to_s.length < 6
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 6.'
      end

      if email !~ Regexp.new(/^(([^<>()[\\]\\\\.,;:\\s@\\\"]+(\\.[^<>()[\\]\\\\.,;:\\s@\\\"]+)*)|(\\\".+\\\"))@((\\[\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/)
        fail ArgumentError, 'invalid value for "email", must conform to the pattern /^(([^<>()[\\]\\\\.,;:\\s@\\\"]+(\\.[^<>()[\\]\\\\.,;:\\s@\\\"]+)*)|(\\\".+\\\"))@((\\[\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$/.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 1
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 1.'
      end

      if !title.nil? && title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      if !title.nil? && title !~ Regexp.new(/^(M|F|J|U)$/)
        fail ArgumentError, 'invalid value for "title", must conform to the pattern /^(M|F|J|U)$/.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, 'first_name cannot be nil'
      end

      if first_name.to_s.length > 256
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 256.'
      end

      if first_name.to_s.length < 2
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 2.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length > 256
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 256.'
      end

      if last_name.to_s.length < 2
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 2.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] nationality Value to be assigned
    def nationality=(nationality)
      if nationality.nil?
        fail ArgumentError, 'nationality cannot be nil'
      end

      if nationality.to_s.length > 19
        fail ArgumentError, 'invalid value for "nationality", the character length must be smaller than or equal to 19.'
      end

      if nationality.to_s.length < 0
        fail ArgumentError, 'invalid value for "nationality", the character length must be great than or equal to 0.'
      end

      @nationality = nationality
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 30.'
      end

      if !phone_number.nil? && phone_number.to_s.length < 6
        fail ArgumentError, 'invalid value for "phone_number", the character length must be great than or equal to 6.'
      end

      if !phone_number.nil? && phone_number !~ Regexp.new(/^\\d{6,30}$/)
        fail ArgumentError, 'invalid value for "phone_number", must conform to the pattern /^\\d{6,30}$/.'
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_number Value to be assigned
    def mobile_number=(mobile_number)
      if !mobile_number.nil? && mobile_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "mobile_number", the character length must be smaller than or equal to 30.'
      end

      if !mobile_number.nil? && mobile_number.to_s.length < 6
        fail ArgumentError, 'invalid value for "mobile_number", the character length must be great than or equal to 6.'
      end

      if !mobile_number.nil? && mobile_number !~ Regexp.new(/^\\d{6,30}$/)
        fail ArgumentError, 'invalid value for "mobile_number", must conform to the pattern /^\\d{6,30}$/.'
      end

      @mobile_number = mobile_number
    end

    # Custom attribute writer method with validation
    # @param [Object] payer_or_beneficiary Value to be assigned
    def payer_or_beneficiary=(payer_or_beneficiary)
      if payer_or_beneficiary.nil?
        fail ArgumentError, 'payer_or_beneficiary cannot be nil'
      end

      if payer_or_beneficiary > 2
        fail ArgumentError, 'invalid value for "payer_or_beneficiary", must be smaller than or equal to 2.'
      end

      if payer_or_beneficiary < 1
        fail ArgumentError, 'invalid value for "payer_or_beneficiary", must be greater than or equal to 1.'
      end

      @payer_or_beneficiary = payer_or_beneficiary
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          company == o.company &&
          account_id == o.account_id &&
          email == o.email &&
          title == o.title &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          adresse == o.adresse &&
          birth == o.birth &&
          nationality == o.nationality &&
          phone_number == o.phone_number &&
          mobile_number == o.mobile_number &&
          is_debtor == o.is_debtor &&
          payer_or_beneficiary == o.payer_or_beneficiary &&
          is_one_time_customer_account == o.is_one_time_customer_account &&
          is_technical_account == o.is_technical_account
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [company, account_id, email, title, first_name, last_name, adresse, birth, nationality, phone_number, mobile_number, is_debtor, payer_or_beneficiary, is_one_time_customer_account, is_technical_account].hash
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
