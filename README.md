Spree Product Ran Out Stock
====================

This spree extension was created for a technical test from a developer's job

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_product_out_stock', github: 'tucocorp/spree_product_out_stock', branch: '3.1-stable'
  ```
  The `branch` option is important: it must match the version of Spree you're using.
  For example, use `3-1-stable` if you're using Spree `3-1-x` version.

2. Install the gem using Bundler:
  ```ruby
    bundle install
  ```
3. Restart your server. If your server was running, restart it so that it can find the assets properly.

4. Now you can go to you_root_path:3000/admin (Ex: localhost:3000/admin) and Enter your access key.

5. Finally go to reports > Products ran out of stock report. if you see, you would select the range of date from products ran out of stock

```ruby
  NOTE: If you are trying to see the products and you have default spree setting, you must have to change the stock from products, because all the products have stock > 0.
```
