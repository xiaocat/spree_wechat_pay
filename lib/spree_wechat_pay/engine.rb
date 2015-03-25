module SpreeWechatPay
  class Engine < Rails::Engine

    require 'spree/core'

    isolate_namespace Spree
    engine_name 'spree_wechat_pay'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc

    # config.middleware.insert_after ActionDispatch::ParamsParser, ActionDispatch::XmlParamsParser

  end
end
