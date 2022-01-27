# typed: strict
# frozen_string_literal: true

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "shopify_api"
require_relative "../../test_helper"

class CommentUnstableTest < Test::Unit::TestCase
  def setup
    super

    @test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "this-is-a-test-shop.myshopify.io", access_token: "this_is_a_test_token")
    modify_context(api_version: "unstable")
  end

  sig do
    void
  end
  def test_1()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json?article_id=134645308&blog_id=241253187")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.all(
      session: @test_session,
      article_id: "134645308",
      blog_id: "241253187",
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json?article_id=134645308&blog_id=241253187")
  end

  sig do
    void
  end
  def test_2()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json?blog_id=241253187")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.all(
      session: @test_session,
      blog_id: "241253187",
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json?blog_id=241253187")
  end

  sig do
    void
  end
  def test_3()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.all(
      session: @test_session,
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json")
  end

  sig do
    void
  end
  def test_4()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json?since_id=118373535")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.all(
      session: @test_session,
      since_id: "118373535",
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json?since_id=118373535")
  end

  sig do
    void
  end
  def test_5()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/count.json?article_id=134645308&blog_id=241253187")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.count(
      session: @test_session,
      article_id: "134645308",
      blog_id: "241253187",
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/count.json?article_id=134645308&blog_id=241253187")
  end

  sig do
    void
  end
  def test_6()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/count.json?blog_id=241253187")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.count(
      session: @test_session,
      blog_id: "241253187",
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/count.json?blog_id=241253187")
  end

  sig do
    void
  end
  def test_7()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/count.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.count(
      session: @test_session,
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/count.json")
  end

  sig do
    void
  end
  def test_8()
    stub_request(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/118373535.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    ShopifyAPI::Comment.find(
      session: @test_session,
      id: "118373535",
    )

    assert_requested(:get, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/118373535.json")
  end

  sig do
    void
  end
  def test_9()
    stub_request(:put, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/118373535.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: { "comment" => hash_including({id: 118373535, body: "You can even update through a web service.", author: "Your new name", email: "your@updated-email.com", published_at: "2022-01-06T21:11:21.356Z"}) }
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.id = 118373535
    comment.body = "You can even update through a web service."
    comment.author = "Your new name"
    comment.email = "your@updated-email.com"
    comment.published_at = "2022-01-06T21:11:21.356Z"
    comment.save()

    assert_requested(:put, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/118373535.json")
  end

  sig do
    void
  end
  def test_10()
    stub_request(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: { "comment" => hash_including({body: "I like comments\nAnd I like posting them *RESTfully*.", author: "Your name", email: "your@email.com", ip: "107.20.160.121", blog_id: 241253187, article_id: 134645308}) }
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.body = "I like comments\nAnd I like posting them *RESTfully*."
    comment.author = "Your name"
    comment.email = "your@email.com"
    comment.ip = "107.20.160.121"
    comment.blog_id = 241253187
    comment.article_id = 134645308
    comment.save()

    assert_requested(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments.json")
  end

  sig do
    void
  end
  def test_11()
    stub_request(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/spam.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.id = 653537639
    comment.spam(
      body: {},
    )

    assert_requested(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/spam.json")
  end

  sig do
    void
  end
  def test_12()
    stub_request(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/not_spam.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.id = 653537639
    comment.not_spam(
      body: {},
    )

    assert_requested(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/not_spam.json")
  end

  sig do
    void
  end
  def test_13()
    stub_request(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/approve.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.id = 653537639
    comment.approve(
      body: {},
    )

    assert_requested(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/approve.json")
  end

  sig do
    void
  end
  def test_14()
    stub_request(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/remove.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.id = 653537639
    comment.remove(
      body: {},
    )

    assert_requested(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/remove.json")
  end

  sig do
    void
  end
  def test_15()
    stub_request(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/restore.json")
      .with(
        headers: {"Accept"=>"application/json", "X-Shopify-Access-Token"=>"this_is_a_test_token", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: "{}", headers: {})

    comment = ShopifyAPI::Comment.new(session: @test_session)
    comment.id = 653537639
    comment.restore(
      body: {},
    )

    assert_requested(:post, "https://this-is-a-test-shop.myshopify.io/admin/api/unstable/comments/653537639/restore.json")
  end

end
