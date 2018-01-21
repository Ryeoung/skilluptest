CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
 config.fog_credentials = {
    provider:              'AWS',                        # required
      aws_access_key_id:     'xxxx',                        # required
    aws_secret_access_key: 'kkkK',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'skillupacademy'                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { } # optional, defaults to {}
end