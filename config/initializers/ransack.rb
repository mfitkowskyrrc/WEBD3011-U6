# Allow Ransack to search ActiveStorage::Attachment attributes
Rails.application.config.to_prepare do
  ActiveStorage::Attachment.class_eval do
    def self.ransackable_attributes(auth_object = nil)
      ["id", "name", "record_id", "record_type", "blob_id", "created_at"]
    end
  end

  ActiveStorage::Blob.class_eval do
    def self.ransackable_attributes(auth_object = nil)
      ["id", "key", "filename", "content_type", "metadata", "byte_size", "checksum", "created_at", "service_name"]
    end
  end
end
