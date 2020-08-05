=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
LemonWay Codegen version: 2.4.12

=end

require 'date'

module LemonWayClient
  class MoneyInSddInitInput
    # ID of the mandate.
    attr_accessor :sdd_mandate_id

    # Debit date of the bank account, must be later than the default date.  Leave empty in order to use the default date: current date + 1 working days before 10:30 AM or current date + 2 working days after.
    attr_accessor :collection_date

    # Payment account ID to credit.
    attr_accessor :account_id

    # Amount to debit.  Amounts are given as integer numbers in cents.
    attr_accessor :total_amount

    # WHITE BRAND fee.  Amounts are given as integer numbers in cents.
    attr_accessor :commission_amount

    # Comment regarding the transaction.
    attr_accessor :comment

    # If true:  1. [amountCom] will be ignored and will be replaced with LEMON WAY's fee.  2. The WHITE BRAND will not receive any fee.
    attr_accessor :auto_commission

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sdd_mandate_id' => :'sddMandateId',
        :'collection_date' => :'collectionDate',
        :'account_id' => :'accountId',
        :'total_amount' => :'totalAmount',
        :'commission_amount' => :'commissionAmount',
        :'comment' => :'comment',
        :'auto_commission' => :'autoCommission'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'sdd_mandate_id' => :'Integer',
        :'collection_date' => :'String',
        :'account_id' => :'String',
        :'total_amount' => :'Integer',
        :'commission_amount' => :'Integer',
        :'comment' => :'String',
        :'auto_commission' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'sddMandateId')
        self.sdd_mandate_id = attributes[:'sddMandateId']
      end

      if attributes.has_key?(:'collectionDate')
        self.collection_date = attributes[:'collectionDate']
      end

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'commissionAmount')
        self.commission_amount = attributes[:'commissionAmount']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'autoCommission')
        self.auto_commission = attributes[:'autoCommission']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sdd_mandate_id.nil?
        invalid_properties.push('invalid value for "sdd_mandate_id", sdd_mandate_id cannot be nil.')
      end

      if !@collection_date.nil? && @collection_date !~ Regexp.new(/([12]\d{3}\/(0[1-9]|1[0-2])\/(0[1-9]|[12]\d|3[01]))/)
        invalid_properties.push('invalid value for "collection_date", must conform to the pattern /([12]\d{3}\/(0[1-9]|1[0-2])\/(0[1-9]|[12]\d|3[01]))/.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_id.to_s.length > 256
        invalid_properties.push('invalid value for "account_id", the character length must be smaller than or equal to 256.')
      end

      if @account_id.to_s.length < 0
        invalid_properties.push('invalid value for "account_id", the character length must be great than or equal to 0.')
      end

      if !@comment.nil? && @comment.to_s.length > 140
        invalid_properties.push('invalid value for "comment", the character length must be smaller than or equal to 140.')
      end

      if !@comment.nil? && @comment.to_s.length < 0
        invalid_properties.push('invalid value for "comment", the character length must be great than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sdd_mandate_id.nil?
      return false if !@collection_date.nil? && @collection_date !~ Regexp.new(/([12]\d{3}\/(0[1-9]|1[0-2])\/(0[1-9]|[12]\d|3[01]))/)
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 256
      return false if @account_id.to_s.length < 0
      return false if !@comment.nil? && @comment.to_s.length > 140
      return false if !@comment.nil? && @comment.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] collection_date Value to be assigned
    def collection_date=(collection_date)
      if !collection_date.nil? && collection_date !~ Regexp.new(/([12]\d{3}\/(0[1-9]|1[0-2])\/(0[1-9]|[12]\d|3[01]))/)
        fail ArgumentError, 'invalid value for "collection_date", must conform to the pattern /([12]\d{3}\/(0[1-9]|1[0-2])\/(0[1-9]|[12]\d|3[01]))/.'
      end

      @collection_date = collection_date
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      if account_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "account_id", the character length must be smaller than or equal to 256.'
      end

      if account_id.to_s.length < 0
        fail ArgumentError, 'invalid value for "account_id", the character length must be great than or equal to 0.'
      end

      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] comment Value to be assigned
    def comment=(comment)
      if !comment.nil? && comment.to_s.length > 140
        fail ArgumentError, 'invalid value for "comment", the character length must be smaller than or equal to 140.'
      end

      if !comment.nil? && comment.to_s.length < 0
        fail ArgumentError, 'invalid value for "comment", the character length must be great than or equal to 0.'
      end

      @comment = comment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sdd_mandate_id == o.sdd_mandate_id &&
          collection_date == o.collection_date &&
          account_id == o.account_id &&
          total_amount == o.total_amount &&
          commission_amount == o.commission_amount &&
          comment == o.comment &&
          auto_commission == o.auto_commission
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sdd_mandate_id, collection_date, account_id, total_amount, commission_amount, comment, auto_commission].hash
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
