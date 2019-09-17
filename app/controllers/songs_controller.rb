class SongsController < ApplicationController
  
  def index
    client = Aws::S3::Client.new(
      region: 'eu-west-2',
      credentials: Aws::Credentials.new(Settings["s3"]["id"], Settings["s3"]["key"]),
      access_key_id: Settings["s3"]["id"],
      secret_access_key: Settings["s3"]["key"]
    )
    @recordings = client.list_objects_v2({bucket: Settings["s3"]["bucket"], max_keys: 20})
  end

  def upload
  end

  def delete
  end

end
