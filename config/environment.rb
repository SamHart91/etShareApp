# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

LOCAL_SETTINGS_FILE_PATH = ["#{Rails.root}/config/local_settings_#{Rails.env}_env.yml", "#{Rails.root}/config/local_settings.yml"].detect { |file_path| File.exists?(file_path) }
LOCAL_SETTINGS = YAML.load_file(LOCAL_SETTINGS_FILE_PATH)