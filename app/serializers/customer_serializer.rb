class CustomerSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :custname, :image, :user_id, :user

  def image
    return unless object.image.attached?

    object.image.blob.attributes
      .slice('filename', 'byte_size')
      .merge(url: image_url)
      .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    url_for(object.image)
  end
end
