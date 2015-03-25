module Spree
  class Gateway::WechatPay < Gateway
    preference :appId, :string
    preference :appKey, :string
    preference :partnerId, :string
    preference :partnerKey, :string
    preference :secret, :string
    preference :iconUrl, :string

    def supports?(source)
      true
    end

    def provider
    end

    def purchase(amount, express_checkout, gateway_options={})
      Class.new do
        def success?; true; end
        def authorization; nil; end
      end.new
    end

    def auto_capture?
      true
    end

    def method_type
      'wechatpay'
    end

  end
end
