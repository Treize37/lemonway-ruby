=begin
#Lemonway DirectKit API 2.0

## Introduction    This service provides methods for automating the management of the accounts and operations.    __A strict control access on the IP is applied, make sure you have the rights before requesting the API.__    Please note that this version of the API is in pilot stage, and therefore may evolve in the future. Should you be interested in integrating this version, please contact your Lemon Way account manager or <a href=\"https://support.lemonway.com/hc/requests/new\" target=\"_blank\">the support team</a>.    # Authentication    The authentication service strictly follow the __chapter 4.4.2__ [Access Token request](https://tools.ietf.org/html/rfc6749#section-4.4.2) of the __RFC 6749__.    The unique method exposed by the api provides a unique bearer access associate a unique directkit. All dikectkit and environment have their own access.    The bearer allow an application to consume the api Rest Directkit    __This response has these scenarios:__  * In case the bearer do not exist, the method create a new bearer.  * In case the bearer already exist, it return the actual bearer with the remaining time left.  * In case the bearer lifetime is over, a new one is created, the old one is permanently deleted.  * In case of failure, a http statut code error with succinct information for security purpose.    # oauth2    __cURL example__:    ```  curl -X POST \"https://authentication.lemonway.com/v1/token\"      -H \"accept: application/json;charset=UTF-8\"      -H \"Authorization: Basic 375d7fd6-f1c3-41ed-82c6-c273fe384318\"      -H \"Content_Type: application/x-www-form-urlencoded\"      -d \"grant_type=client_credentials\"  ```    The OAuth2 documentation is available at this link [OAuth2 authentication](https://172.31.0.84:8082/oauth2-public/token/swagger).    Once you call the method, and if the informations provided are corrects, you will get a response with a bearer.    Use the provided bearer to request the directkit service    __Response example__:  ```  {      \"access_token\": \"4442659a-bebc-4afb-8fbd-21d19ae11972\", // unique bearer access      \"token_type\": \"Bearer\",      \"expires_in\": 3600 // secondes  }  ```    ___Note: Use the same method to renew your bearer once it got expired___    # Notifications    The __WHITE BRAND__ may want to receive notifications when __certain events are triggered__ (e.g. on payment account status change, on documentation status change...).  These notifications can be received by e-mail (HTML format) or be sent to an information system (webhooks / callbacks through HTTP POST or GET). For more information about notifications, please visit [the notifications documentation](https://documentation.lemonway.com/en/notifications).  To activate notifications, please log on the __WHITE BRAND back-office__ and go to the \"__Configuration/Notifications__\" menu.

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
LemonWay Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for LemonWayClient::AccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @instance = LemonWayClient::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@instance).to be_instance_of(LemonWayClient::AccountsApi)
    end
  end

  # unit tests for accounts_account_single_get
  # Getting detailed payment account data
  # This method is often used by your system, to get all information regarding a payment account: amount of money in the payment account, IBAN associated to the payment account, document uploaded for KYC(Know Your Customer)...               Everything about one payment account is here.&lt;br /&gt;               Fill at least one search field.
  # @param accountid Account ID
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [AccountDetailsOutput]
  describe 'accounts_account_single_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_balances_get
  # Getting all payments accounts balances
  # Use GetBalances to get all payment accounts which balance have changed since the input date,               or all the balances of payment accounts with internal ID between payment accountIdStart and payment accountIdEnd.
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :update_date Date in UTC Seconds.  Leave empty if you wish to use payment account IDs instead.
  # @option opts [Integer] :internal_account_id_start First payment account internal ID, starting from 12.
  # @option opts [Integer] :internal_account_id_end Last payment account internal ID, starting from 12.
  # @option opts [Integer] :page index start from 1, let null to get all
  # @option opts [Integer] :limit default 20, let it null if no pagination
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [AccountBalanceOutput]
  describe 'accounts_balances_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_balances_history_get
  # Getting payment account balance history
  # @param account_id Account ID
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :at_date Request balance at at given time in UTC Unix timestamp.
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [BalanceHistoryOutput]
  describe 'accounts_balances_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_blocked_put
  # Block, unblock account
  # @param accountid Account ID
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [AccountBlockedOutput]
  describe 'accounts_blocked_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_document_get
  # Get the document(s) associate to a payment account
  # @param accountid Account ID
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [AccountDocumentsOutput]
  describe 'accounts_document_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_documents_sign_init_post
  # Initialize electronic signature of a document
  # This functionality allows you to initialize an electronic signature. For now, only SDD mandates can be signed &lt;br /&gt;   Prequisites:  &lt;ul&gt;&lt;li&gt;A mandate has been initialized with RegisterSddMandate&lt;/li&gt;&lt;/ul&gt;   This functionality will then require 3 integration points:  &lt;ul&gt;&lt;li&gt;A call to SignDocumentInit of DIRECTKIT to initialize the signature request and get a token&lt;/li&gt;&lt;li&gt;A redirection from your website to the WEBKIT, with the token in GET parameter(see Finalize document signature)&lt;/li&gt;&lt;li&gt;A return page where your user will be redirected after the signature &lt;/li&gt;&lt;/ul&gt;
  # @param accountid Payment account ID
  # @param documentid 
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [SignDocumentInitOutput]
  describe 'accounts_documents_sign_init_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_documents_upload_post
  # document upload for KYC
  # Use UploadFile to upload documents into a payment account, with a file size smaller than 6 Mb.&lt;br /&gt;               For security reason, only those documents types are accepted : PDF, JPG, JPEG et PNG.&lt;br /&gt;               Refrain from using TIFF and prefer PDF.
  # @param accountid Account id
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [UploadDocumentOutput]
  describe 'accounts_documents_upload_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_individual_post
  # Create a new individual account
  # By calling this method, the WHITE BRAND asks Lemon Way to create a individual payment account. &lt;br /&gt;   1. Users enters its data on your web site, for example on his &#39;profile&#39; area on your web site &lt;br /&gt;   2. Your serveur calls our Accounts API &lt;br /&gt;   3. Lemon Way creates the payment account in your environment &lt;br /&gt;   4. Your system reads the answer of this method and informs the user &lt;br /&gt;
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [RegisterIndividualAccountOutput]
  describe 'accounts_individual_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_individual_put
  # Update payment account data
  # With this method, the WHITE BRAND system asks Lemon Way to update information related to a CLIENT payment account.  1. The user enters his new data  2. The user calls the Lemon Way webservice  3. Lemon Way records data when it exists  4. The application processes Lemon Way&#39;s response and displays a confirmation message
  # @param accountid Account ID
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [UpdateIndividualAccountDetailsOutput]
  describe 'accounts_individual_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_kyc_status_get
  # Looking for user, document, IBAN, modified since an entry date
  # Use this method to look for users, documents, IBAN for which the status has changed since a specified date. &lt;br /&gt;  NOTE :&lt;br /&gt;  This method will return the same user multiple times in the same request if his status has changed multiple time since a specified date.
  # @param update_date UTC Unix timestamp.
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page index start from 1, let null to get all
  # @option opts [Integer] :limit default 20, let it null if no pagination
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [KycStatusOutput]
  describe 'accounts_kyc_status_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_kycstatus_put
  # Update payment account status
  # With this method, payment account status can be updated or closed.&lt;br /&gt;  NOTE :&lt;br /&gt;  This functionality is available depending on your contract.
  # @param accountid Account ID
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [UpdateAccountStatusOutput]
  describe 'accounts_kycstatus_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_legal_post
  # Create a new legal account
  # By calling this method, the WHITE BRAND asks Lemon Way to create a legal payment account. &lt;br /&gt;   1. Users enters its data on your web site, for example on his &#39;profile&#39; area on your web site &lt;br /&gt;   2. Your serveur calls our Accounts API &lt;br /&gt;   3. Lemon Way creates the payment account in your environment &lt;br /&gt;   4. Your system reads the answer of this method and informs the user &lt;br /&gt;
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [RegisterLegalAccountOutput]
  describe 'accounts_legal_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_legal_single_put
  # Update payment account data
  # With this method, the WHITE BRAND system asks Lemon Way to update information related to a CLIENT payment account.  1. The user enters his new data  2. The user calls the Lemon Way webservice  3. Lemon Way records data when it exists  4. The application processes Lemon Way&#39;s response and displays a confirmation message
  # @param accountid Account ID
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [UpdateLegalAccountDetailsOutput]
  describe 'accounts_legal_single_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_retrieve_post
  # Getting detailed payments accounts data
  # This method is often used by your system, to get all information regarding a payment account: amount of money in the payment account, IBAN associated to the payment account, document uploaded for KYC(Know Your Customer)              Everything about one payment account is here.&lt;br /&gt;               Fill at least one search field.
  # @param parameters 
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [AccountDetailsBatchOutput]
  describe 'accounts_retrieve_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for accounts_transactions_get
  # Get list of all transactions of a payment account
  # Use GetWalletTransHistory to retrieve the list of money-in, money-out and p2p (payment between payment account) of a given payment account.
  # @param account_id Accounbt ID
  # @param authorization Authorization bearer (OAuth 2)
  # @param psu_ip_address IP address of the final client (PSU).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start_date UTC Unix timestamp.  In order to return transactions initialized after startDate.  If the payment account is \&quot;SC\&quot; then this value is mandatory.
  # @option opts [String] :end_date UTC Unix timestamp.  In order to return transactions initialized before endDate.  If the payment account is \&quot;SC\&quot; then this value is mandatory and the time span cannot exceed 1 week.
  # @option opts [Integer] :page index start from 1, let null to get all
  # @option opts [Integer] :limit default 20, let it null if no pagination
  # @option opts [String] :psu_accept_language Response language accepted by final client (PSU). English by default
  # @option opts [String] :psu_user_agent User-agent of the final client (PSU).
  # @return [AccountKycStatusOutput]
  describe 'accounts_transactions_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
