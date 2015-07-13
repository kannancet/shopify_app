ShopifyApp.configure do |config|
  config.api_key = 'fd3baeff64ebe4f4557542fba7b75365'
  config.secret = '8ce81afc41e8af284ee90f7eed3d5897'
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true
  config.routes = false
end
