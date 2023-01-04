# typed: strict
# frozen_string_literal: true

########################################################################################################################
# This file is auto-generated. If you have an issue, please create a GitHub issue.                                     #
########################################################################################################################

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "shopify_api"
require_relative "../../test_helper"

class Fulfillment202204Test < Test::Unit::TestCase
  def setup
    super

    test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")
    ShopifyAPI::Context.activate_session(test_session)
    modify_context(api_version: "2022-04")
  end

  def teardown
    super

    ShopifyAPI::Context.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillments" => [{"id" => 255858046, "order_id" => 450789469, "status" => "failure", "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:21:36-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "location_id" => 655441491, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "duties" => [], "tax_lines" => [{"price" => "3.98", "rate" => 0.06, "title" => "State Tax", "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "1Z2345", "tracking_numbers" => ["1Z2345"], "tracking_url" => "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345", "tracking_urls" => ["https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345"], "receipt" => {"testcase" => true, "authorization" => "123456"}, "name" => "#1001.0", "admin_graphql_api_id" => "gid://shopify/Fulfillment/255858046"}]}), headers: {})

    ShopifyAPI::Fulfillment.all(
      order_id: 450789469,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_2()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json?since_id=255858046")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillments" => [{"id" => 1069019883, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:45-05:00", "service" => "shipwire-app", "updated_at" => "2023-01-03T12:29:45-05:00", "tracking_company" => "TNT", "shipment_status" => nil, "location_id" => 24826418, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "shipwire-app", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shipwire-app", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 1, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "duties" => [], "tax_lines" => [{"price" => "3.98", "rate" => 0.06, "title" => "State Tax", "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "123456789", "tracking_numbers" => ["123456789"], "tracking_url" => "https://www.tnt.com/express/en_us/site/tracking.html?searchType=con&cons=123456789", "tracking_urls" => ["https://www.tnt.com/express/en_us/site/tracking.html?searchType=con&cons=123456789"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019883"}]}), headers: {})

    ShopifyAPI::Fulfillment.all(
      order_id: 450789469,
      since_id: "255858046",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json?since_id=255858046")
  end

  sig do
    void
  end
  def test_3()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => nil, "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019866, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:28:40-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:40-05:00", "tracking_company" => nil, "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => nil, "tracking_numbers" => [], "tracking_url" => nil, "tracking_urls" => [], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019866"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = nil
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_4()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 487838322, "tracking_number" => "123456789", "tracking_urls" => ["https://shipping.xyz/track.php?num=123456789", "https://anothershipper.corp/track.php?code=abc"], "notify_customer" => true}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019882, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:42-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:42-05:00", "tracking_company" => "TNT", "shipment_status" => nil, "location_id" => 487838322, "origin_address" => nil, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}, {"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}, {"id" => 703073504, "variant_id" => 457924702, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008BLACK", "variant_title" => "black", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - black", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/703073504", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "123456789", "tracking_numbers" => ["123456789"], "tracking_url" => "https://shipping.xyz/track.php?num=123456789", "tracking_urls" => ["https://shipping.xyz/track.php?num=123456789", "https://anothershipper.corp/track.php?code=abc"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019882"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 487838322
    fulfillment.tracking_number = "123456789"
    fulfillment.tracking_urls = [
      "https://shipping.xyz/track.php?num=123456789",
      "https://anothershipper.corp/track.php?code=abc"
    ]
    fulfillment.notify_customer = true
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_5()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_url" => "http://www.packagetrackr.com/track/somecarrier/1234567", "tracking_company" => "Jack Black Pack, Stack and Track", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019867, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:28:43-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:43-05:00", "tracking_company" => "Jack Black Pack, Stack and Track", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => nil, "tracking_numbers" => [], "tracking_url" => "http://www.packagetrackr.com/track/somecarrier/1234567", "tracking_urls" => ["http://www.packagetrackr.com/track/somecarrier/1234567"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019867"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_url = "http://www.packagetrackr.com/track/somecarrier/1234567"
    fulfillment.tracking_company = "Jack Black Pack, Stack and Track"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_6()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_numbers" => ["ee179e6e5b36a02451ec5376cc7edcb2", "011a96f842b208c5322f2bf4ebf288cd", "7ecb946e0ea55b5da2c5d7346be6a280"], "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019875, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:13-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:13-05:00", "tracking_company" => "Deutsche Post", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "ee179e6e5b36a02451ec5376cc7edcb2", "tracking_numbers" => ["ee179e6e5b36a02451ec5376cc7edcb2", "011a96f842b208c5322f2bf4ebf288cd", "7ecb946e0ea55b5da2c5d7346be6a280"], "tracking_url" => "https://www.deutschepost.de/de/s/sendungsverfolgung/verfolgen.html?piececode=ee179e6e5b36a02451ec5376cc7edcb2", "tracking_urls" => ["https://www.deutschepost.de/de/s/sendungsverfolgung/verfolgen.html?piececode=ee179e6e5b36a02451ec5376cc7edcb2", "https://www.deutschepost.de/de/s/sendungsverfolgung/verfolgen.html?piececode=011a96f842b208c5322f2bf4ebf288cd", "https://www.deutschepost.de/de/s/sendungsverfolgung/verfolgen.html?piececode=7ecb946e0ea55b5da2c5d7346be6a280"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019875"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_numbers = [
      "ee179e6e5b36a02451ec5376cc7edcb2",
      "011a96f842b208c5322f2bf4ebf288cd",
      "7ecb946e0ea55b5da2c5d7346be6a280"
    ]
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_7()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => "RR123456789CN", "tracking_company" => "Chinese Post", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019880, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:37-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:37-05:00", "tracking_company" => "Chinese Post", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "RR123456789CN", "tracking_numbers" => ["RR123456789CN"], "tracking_url" => "http://www.track-chinapost.com/result_china.php?order_no=RR123456789CN", "tracking_urls" => ["http://www.track-chinapost.com/result_china.php?order_no=RR123456789CN"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019880"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = "RR123456789CN"
    fulfillment.tracking_company = "Chinese Post"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_8()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => "1234567", "tracking_company" => "Custom Tracking Company", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019873, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:04-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:04-05:00", "tracking_company" => "Custom Tracking Company", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "1234567", "tracking_numbers" => ["1234567"], "tracking_url" => nil, "tracking_urls" => [], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019873"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = "1234567"
    fulfillment.tracking_company = "Custom Tracking Company"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_9()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => "123456789", "tracking_company" => "4PX", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019872, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:28:59-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:59-05:00", "tracking_company" => "4PX", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "123456789", "tracking_numbers" => ["123456789"], "tracking_url" => "http://track.4px.com", "tracking_urls" => ["http://track.4px.com"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019872"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = "123456789"
    fulfillment.tracking_company = "4PX"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_10()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => "123456789010", "tracking_company" => "fed ex", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019878, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:27-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:27-05:00", "tracking_company" => "fed ex", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "123456789010", "tracking_numbers" => ["123456789010"], "tracking_url" => "https://www.fedex.com/fedextrack/?trknbr=123456789010", "tracking_urls" => ["https://www.fedex.com/fedextrack/?trknbr=123456789010"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019878"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = "123456789010"
    fulfillment.tracking_company = "fed ex"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_11()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => "123456789010", "tracking_company" => "fed ex", "tracking_url" => "https://www.new-fedex-tracking.com/?number=123456789010", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019881, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:40-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:40-05:00", "tracking_company" => "fed ex", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "123456789010", "tracking_numbers" => ["123456789010"], "tracking_url" => "https://www.new-fedex-tracking.com/?number=123456789010", "tracking_urls" => ["https://www.new-fedex-tracking.com/?number=123456789010"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019881"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = "123456789010"
    fulfillment.tracking_company = "fed ex"
    fulfillment.tracking_url = "https://www.new-fedex-tracking.com/?number=123456789010"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_12()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => "CJ274101086US", "tracking_url" => "http://www.custom-tracking.com/?tracking_number=CJ274101086US", "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019884, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:49-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:49-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "CJ274101086US", "tracking_numbers" => ["CJ274101086US"], "tracking_url" => "http://www.custom-tracking.com/?tracking_number=CJ274101086US", "tracking_urls" => ["http://www.custom-tracking.com/?tracking_number=CJ274101086US"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019884"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = "CJ274101086US"
    fulfillment.tracking_url = "http://www.custom-tracking.com/?tracking_number=CJ274101086US"
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_13()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => nil, "line_items" => [{"id" => 518995019}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019879, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:34-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:34-05:00", "tracking_company" => nil, "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => nil, "tracking_numbers" => [], "tracking_url" => nil, "tracking_urls" => [], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019879"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = nil
    fulfillment.line_items = [
      {
        "id" => 518995019
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_14()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"location_id" => 655441491, "tracking_number" => nil, "line_items" => [{"id" => 518995019, "quantity" => 1}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019877, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:29:21-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:21-05:00", "tracking_company" => nil, "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 518995019, "variant_id" => 49148385, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008RED", "variant_title" => "red", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - red", "variant_inventory_management" => "shopify", "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.33", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.33", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.33", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/518995019", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => nil, "tracking_numbers" => [], "tracking_url" => nil, "tracking_urls" => [], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019877"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.location_id = 655441491
    fulfillment.tracking_number = nil
    fulfillment.line_items = [
      {
        "id" => 518995019,
        "quantity" => 1
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments.json")
  end

  sig do
    void
  end
  def test_15()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillment_orders/1046000790/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillments" => [{"id" => 1069019874, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:21:36-05:00", "tracking_company" => "UPS", "shipment_status" => nil, "location_id" => 24826418, "line_items" => [{"id" => 1071823194, "variant_id" => 43729076, "title" => "Draft", "quantity" => 1, "sku" => "draft-151", "variant_title" => "151cm", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 108828309, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "Draft - 151cm", "variant_inventory_management" => nil, "properties" => [], "product_exists" => true, "fulfillable_quantity" => 1, "grams" => 0, "price" => "10.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "10.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "10.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/1071823194", "tax_lines" => []}], "tracking_number" => "#\u26201\u2622\n---\n4321\n", "tracking_numbers" => ["#\u26201\u2622\n---\n4321\n"], "tracking_url" => "https://www.ups.com/WebTracking?loc=en_US&requester=ST&trackNums=#\u26201\u2622---4321", "tracking_urls" => ["https://www.ups.com/WebTracking?loc=en_US&requester=ST&trackNums=#\u26201\u2622---4321"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019874"}]}), headers: {})

    ShopifyAPI::Fulfillment.all(
      fulfillment_order_id: 1046000790,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillment_orders/1046000790/fulfillments.json")
  end

  sig do
    void
  end
  def test_16()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/count.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 1}), headers: {})

    ShopifyAPI::Fulfillment.count(
      order_id: 450789469,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/count.json")
  end

  sig do
    void
  end
  def test_17()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 255858046, "order_id" => 450789469, "status" => "failure", "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:21:36-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "location_id" => 655441491, "origin_address" => nil, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 1, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "1Z2345", "tracking_numbers" => ["1Z2345"], "tracking_url" => "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345", "tracking_urls" => ["https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345"], "receipt" => {"testcase" => true, "authorization" => "123456"}, "name" => "#1001.0", "admin_graphql_api_id" => "gid://shopify/Fulfillment/255858046"}}), headers: {})

    ShopifyAPI::Fulfillment.find(
      order_id: 450789469,
      id: 255858046,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046.json")
  end

  sig do
    void
  end
  def test_18()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"tracking_number" => "987654321"}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"location_id" => 655441491, "id" => 255858046, "order_id" => 450789469, "status" => "failure", "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:01-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "origin_address" => nil, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 1, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "987654321", "tracking_numbers" => ["987654321"], "tracking_url" => "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=987654321", "tracking_urls" => ["https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=987654321"], "receipt" => {"testcase" => true, "authorization" => "123456"}, "name" => "#1001.0", "admin_graphql_api_id" => "gid://shopify/Fulfillment/255858046"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.id = 255858046
    fulfillment.tracking_number = "987654321"
    fulfillment.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046.json")
  end

  sig do
    void
  end
  def test_19()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"message" => "The package was shipped this morning.", "notify_customer" => false, "tracking_info" => {"number" => 1562678, "url" => "https://www.my-shipping-company.com", "company" => "my-shipping-company"}, "line_items_by_fulfillment_order" => [{"fulfillment_order_id" => 1046000785, "fulfillment_order_line_items" => [{"id" => 1058737495, "quantity" => 1}]}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019869, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:28:52-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:52-05:00", "tracking_company" => "my-shipping-company", "shipment_status" => nil, "location_id" => 24826418, "line_items" => [{"id" => 1071823189, "variant_id" => 389013007, "title" => "Crafty Shoes - Red", "quantity" => 1, "sku" => "crappy_shoes_red", "variant_title" => "Small", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 910489600, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "Crafty Shoes - Red - Small", "variant_inventory_management" => nil, "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 0, "price" => "10.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "10.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "10.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/1071823189", "tax_lines" => []}], "tracking_number" => "1562678", "tracking_numbers" => ["1562678"], "tracking_url" => "https://www.my-shipping-company.com", "tracking_urls" => ["https://www.my-shipping-company.com"], "receipt" => {}, "name" => "#1001.2", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019869"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.message = "The package was shipped this morning."
    fulfillment.notify_customer = false
    fulfillment.tracking_info = {
      "number" => 1562678,
      "url" => "https://www.my-shipping-company.com",
      "company" => "my-shipping-company"
    }
    fulfillment.line_items_by_fulfillment_order = [
      {
        "fulfillment_order_id" => 1046000785,
        "fulfillment_order_line_items" => [
          {
            "id" => 1058737495,
            "quantity" => 1
          }
        ]
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments.json")
  end

  sig do
    void
  end
  def test_20()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"message" => "The package was shipped this morning.", "notify_customer" => false, "tracking_info" => {"number" => 1562678, "url" => "https://www.my-shipping-company.com", "company" => "my-shipping-company"}, "line_items_by_fulfillment_order" => [{"fulfillment_order_id" => 1046000780}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"id" => 1069019865, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:28:37-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:37-05:00", "tracking_company" => "my-shipping-company", "shipment_status" => nil, "location_id" => 24826418, "line_items" => [{"id" => 1071823187, "variant_id" => 389013007, "title" => "Crafty Shoes - Red", "quantity" => 1, "sku" => "crappy_shoes_red", "variant_title" => "Small", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 910489600, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "Crafty Shoes - Red - Small", "variant_inventory_management" => nil, "properties" => [], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 0, "price" => "10.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "10.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "10.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/1071823187", "tax_lines" => []}], "tracking_number" => "1562678", "tracking_numbers" => ["1562678"], "tracking_url" => "https://www.my-shipping-company.com", "tracking_urls" => ["https://www.my-shipping-company.com"], "receipt" => {}, "name" => "#1001.2", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019865"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.message = "The package was shipped this morning."
    fulfillment.notify_customer = false
    fulfillment.tracking_info = {
      "number" => 1562678,
      "url" => "https://www.my-shipping-company.com",
      "company" => "my-shipping-company"
    }
    fulfillment.line_items_by_fulfillment_order = [
      {
        "fulfillment_order_id" => 1046000780
      }
    ]
    fulfillment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments.json")
  end

  sig do
    void
  end
  def test_21()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments/1069019871/update_tracking.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "fulfillment" => hash_including({"notify_customer" => true, "tracking_info" => {"number" => "1111", "url" => "http://www.my-url.com", "company" => "my-company"}}) }
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"tracking_company" => "my-company", "location_id" => 24826418, "id" => 1069019871, "order_id" => 450789469, "status" => "success", "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:57-05:00", "shipment_status" => nil, "line_items" => [{"id" => 1071823192, "variant_id" => 43729076, "title" => "Draft", "quantity" => 1, "sku" => "draft-151", "variant_title" => "151cm", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 108828309, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "Draft - 151cm", "variant_inventory_management" => nil, "properties" => [], "product_exists" => true, "fulfillable_quantity" => 1, "grams" => 0, "price" => "10.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "10.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "10.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/1071823192", "tax_lines" => []}], "tracking_number" => "1111", "tracking_numbers" => ["1111"], "tracking_url" => "http://www.my-url.com", "tracking_urls" => ["http://www.my-url.com"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019871"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.id = 1069019871
    fulfillment.update_tracking(
      body: {"fulfillment" => {"notify_customer" => true, "tracking_info" => {"number" => "1111", "url" => "http://www.my-url.com", "company" => "my-company"}}},
    )

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments/1069019871/update_tracking.json")
  end

  sig do
    void
  end
  def test_22()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046/complete.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"status" => "success", "location_id" => 655441491, "id" => 255858046, "order_id" => 450789469, "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:31-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "origin_address" => nil, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "1Z2345", "tracking_numbers" => ["1Z2345"], "tracking_url" => "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345", "tracking_urls" => ["https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345"], "receipt" => {"testcase" => true, "authorization" => "123456"}, "name" => "#1001.0", "admin_graphql_api_id" => "gid://shopify/Fulfillment/255858046"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.id = 255858046
    fulfillment.complete

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046/complete.json")
  end

  sig do
    void
  end
  def test_23()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046/open.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"status" => "open", "location_id" => 655441491, "id" => 255858046, "order_id" => 450789469, "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:50-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "origin_address" => nil, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "channel_liable" => nil, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "1Z2345", "tracking_numbers" => ["1Z2345"], "tracking_url" => "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345", "tracking_urls" => ["https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345"], "receipt" => {"testcase" => true, "authorization" => "123456"}, "name" => "#1001.0", "admin_graphql_api_id" => "gid://shopify/Fulfillment/255858046"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.id = 255858046
    fulfillment.open

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046/open.json")
  end

  sig do
    void
  end
  def test_24()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046/cancel.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"order_id" => 450789469, "status" => "cancelled", "location_id" => 655441491, "id" => 255858046, "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:29:25-05:00", "tracking_company" => "USPS", "shipment_status" => nil, "line_items" => [{"id" => 466157049, "variant_id" => 39072856, "title" => "IPod Nano - 8gb", "quantity" => 1, "sku" => "IPOD2008GREEN", "variant_title" => "green", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 632910392, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "IPod Nano - 8gb - green", "variant_inventory_management" => "shopify", "properties" => [{"name" => "Custom Engraving Front", "value" => "Happy Birthday"}, {"name" => "Custom Engraving Back", "value" => "Merry Christmas"}], "product_exists" => true, "fulfillable_quantity" => 0, "grams" => 200, "price" => "199.00", "total_discount" => "0.00", "fulfillment_status" => nil, "price_set" => {"shop_money" => {"amount" => "199.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "199.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [{"amount" => "3.34", "discount_application_index" => 0, "amount_set" => {"shop_money" => {"amount" => "3.34", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.34", "currency_code" => "USD"}}}], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/466157049", "tax_lines" => [{"title" => "State Tax", "price" => "3.98", "rate" => 0.06, "price_set" => {"shop_money" => {"amount" => "3.98", "currency_code" => "USD"}, "presentment_money" => {"amount" => "3.98", "currency_code" => "USD"}}}]}], "tracking_number" => "1Z2345", "tracking_numbers" => ["1Z2345"], "tracking_url" => "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345", "tracking_urls" => ["https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=1Z2345"], "receipt" => {"testcase" => true, "authorization" => "123456"}, "name" => "#1001.0", "admin_graphql_api_id" => "gid://shopify/Fulfillment/255858046"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.order_id = 450789469
    fulfillment.id = 255858046
    fulfillment.cancel

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/orders/450789469/fulfillments/255858046/cancel.json")
  end

  sig do
    void
  end
  def test_25()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments/1069019870/cancel.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"fulfillment" => {"order_id" => 450789469, "status" => "cancelled", "location_id" => 24826418, "id" => 1069019870, "created_at" => "2023-01-03T12:21:36-05:00", "service" => "manual", "updated_at" => "2023-01-03T12:28:54-05:00", "tracking_company" => "UPS", "shipment_status" => nil, "line_items" => [{"id" => 1071823190, "variant_id" => 43729076, "title" => "Draft", "quantity" => 1, "sku" => "draft-151", "variant_title" => "151cm", "vendor" => nil, "fulfillment_service" => "manual", "product_id" => 108828309, "requires_shipping" => true, "taxable" => true, "gift_card" => false, "name" => "Draft - 151cm", "variant_inventory_management" => nil, "properties" => [], "product_exists" => true, "fulfillable_quantity" => 1, "grams" => 0, "price" => "10.00", "total_discount" => "0.00", "fulfillment_status" => "fulfilled", "price_set" => {"shop_money" => {"amount" => "10.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "10.00", "currency_code" => "USD"}}, "total_discount_set" => {"shop_money" => {"amount" => "0.00", "currency_code" => "USD"}, "presentment_money" => {"amount" => "0.00", "currency_code" => "USD"}}, "discount_allocations" => [], "duties" => [], "admin_graphql_api_id" => "gid://shopify/LineItem/1071823190", "tax_lines" => []}], "tracking_number" => "#\u26201\u2622\n---\n4321\n", "tracking_numbers" => ["#\u26201\u2622\n---\n4321\n"], "tracking_url" => "https://www.ups.com/WebTracking?loc=en_US&requester=ST&trackNums=#\u26201\u2622---4321", "tracking_urls" => ["https://www.ups.com/WebTracking?loc=en_US&requester=ST&trackNums=#\u26201\u2622---4321"], "receipt" => {}, "name" => "#1001.1", "admin_graphql_api_id" => "gid://shopify/Fulfillment/1069019870"}}), headers: {})

    fulfillment = ShopifyAPI::Fulfillment.new
    fulfillment.id = 1069019870
    fulfillment.cancel

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-04/fulfillments/1069019870/cancel.json")
  end

end
