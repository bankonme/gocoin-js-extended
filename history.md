###Changelog

#### v0.2.2
Adds Onboarding Status Route (Merchant Account Completeness)

#### v0.2.0
Pushes dependency version (GoCoin JS 0.4.0)
Remove Admin::fulfillPayout
Change input params for Admin::addMerchantUser params.mid -> params.merchant_id
Change input params for Admin::deleteMerchantUser params.mid -> params.merchant_id, params.uid -> params.user_id
Rename Apps::create_code -> Apps::authorizationCode
Rename Apps::delete_authorized -> Apps::deleteAuthorized
Rename Apps::list_authorized -> Apps::listAuthorized
Rename Apps::new_secret -> Apps::new_secret
Rename Apps::get_by_uid -> Apps::getByClientID


#### v0.1.26
Pushes dependency version (GoCoin JS 0.3.16)

#### v0.1.24
Include payout accounts confirm method

#### v0.1.22
Update setTerms method to include body

#### v0.1.20
Add Terms and KYC docs methods

#### v0.1.18
Remove currency conversions

#### v0.1.16
Adjust merchantUser method to POST for creation

#### v0.1.14
adds PayoutAccounts Class

#### v0.1.12
Pushes dependency version (GoCoin JS 0.3.8)

#### v0.1.10
Pushes dependency version (GoCoin JS 0.3.6)

#### v0.1.8
Adds fulfill methods to Admin class (for currency conversions and payment)

#### v0.1.6
Pushes dependency version (GoCoin JS 0.3.2)

#### v0.1.4
BUGFIX: Admin module object error

#### v0.1.2
Initial release