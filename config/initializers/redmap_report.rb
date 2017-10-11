CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJVPVURLLZLI3GIIQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'reportimage'                          # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = {  } # optional, defaults to {}
end