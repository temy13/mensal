class Subdomain
  def self.matches?(request)
    # wwwがサブドメインとして認識されてしまうのを防ぐ
    request.subdomain.present? && request.subdomain != 'www'
  end
end
