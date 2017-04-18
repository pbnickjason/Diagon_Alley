Aws.config
Aws.config.update(:region => "us-west-2")
S3 = Aws::S3::Resource.new.bucket('diagon-alley-devel-storage')
