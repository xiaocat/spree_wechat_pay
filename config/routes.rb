Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  get '/wechatpay/checkout', :to => "wechatpay#checkout"
  get '/wechat/:id/checkout', :to => "wechatpay#checkout_api"
  post '/wechat/:id/query', :to => "wechatpay#query"
  post '/wechatpay/notify', :to => "wechatpay#notify"
end
