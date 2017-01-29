#if Rails.env.production?
#  Rails.configuration.stripe = {
#    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
#    :secret_key => ENV['STRIPE_SECRET_KEY']
#  }
#else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Aw46zjSCsF1t0itKP1t7BsgE',
    :secret_key => 'sk_test_CXTwjPJ6M8vIOlYP7YZpPmDA'
  }
#end

Stripe.api_key = Rails.configuration.stripe[:secret_key]