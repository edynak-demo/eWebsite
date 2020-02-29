module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Edynak.com | Portfolio Website"
    @seo_keywords = "Christopher Edynak Portfolio Website"
  end
end