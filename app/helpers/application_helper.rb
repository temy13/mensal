module ApplicationHelper
  def get_title
    @page_title.blank? ? "メンサル:メンサの人に聞いてみよー" : @page_title
  end
  def get_seo_keywords
    @seo_keywords.blank? ? "メンサル,mensal" : @seo_keywords
  end
  def get_seo_contents
    @seo_contents.blank? ? "" : @seo_contents
  end


end
