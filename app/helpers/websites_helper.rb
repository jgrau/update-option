module WebsitesHelper
  def check_status(website)
    if website.product && website.version
      if website.product.latest_version == website.version
        return 'OK'
      end
    end
    return 'Outdated'
  end
end
