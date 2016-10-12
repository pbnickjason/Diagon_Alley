Aws.config
Aws.config.update(:region => "us-west-2")
::PROJECT_IMAGES = Aws::S3::Resource.new.bucket('diagon-alley-devel-storage')
