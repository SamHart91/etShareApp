class SongsController < ApplicationController
  BUCKET = Settings["s3"]["bucket"]
  
  def index
    client = Aws::S3::Client.new(
      region: 'eu-west-2',
      credentials: Aws::Credentials.new(Settings["s3"]["id"], Settings["s3"]["key"]),
      access_key_id: Settings["s3"]["id"],
      secret_access_key: Settings["s3"]["key"]
    )
    bucket = client.list_objects({bucket: SongsController::BUCKET})
  end

  def upload
  end

  def delete
  end

end
