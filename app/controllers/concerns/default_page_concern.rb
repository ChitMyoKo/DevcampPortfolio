module DefaultPageConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_title
    end

    def set_title
        @page_title = "Devcamp Portfolio | My Portfolio Website"
        @seo_keyword = "My Portfolio keyword"
    end
end