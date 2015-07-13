# Shopify Embedded Application Example

This is an example application for building Shopify Embedded Applications.

The example uses Ruby on Rails as a backend framework but the Shopify Embedded API is JavaScript based, so it is backend language/framework agnostic. Use this as a reference.

For details on how embedded applications work in Shopify, how to setup your app, and the full javascript API for `ShopifyApp`, please consult the documentation:

http://docs.shopify.com/embedded-app-sdk

# Setting up this application

Clone the repo from git:

    git clone https://github.com/Shopify/embedded-app-example.git
    cd embedded-app-example

Create a `.env` file for your application credentials. These credentials are generated in your Shopify Partner account for your app:

```
SHOPIFY_CLIENT_API_KEY=<your key>
SHOPIFY_CLIENT_API_SECRET=<your secret>
```

Note that your app must have the Embedded App SDK enabled in that same partner account page.

Install the gems:

    bundle install

Run the server:

    bundle exec rails server

To install the application on your dev-shop go to:

    http://localhost:3000/login?shop=<yourdevshop-url.myshopify.com>

You will be prompted to install the application and will be redirected to the embedded Shopify environment once installed.

For local development most modern browsers will block mixed content. Since Shopify runs on HTTPS and a local development server does not, the browser will block the contents of the iframe. The you can either explicitly allow mixed content for your session, or use an HTTPS forwarding service.
