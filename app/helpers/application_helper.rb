module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    hash = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    image_url = "https://secure.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag image_url, alt: user.username, class: 'img-circle'
  end
end
