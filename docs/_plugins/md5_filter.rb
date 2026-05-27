module Jekyll
  module MD5Filter
    def md5_hash(input)
      require 'digest'
      Digest::MD5.hexdigest(input.to_s)
    end
  end
end

Liquid::Template.register_filter(Jekyll::MD5Filter)