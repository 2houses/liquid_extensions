module LiquidExtensions
  module Tags
    class CommonStylesheetTag < BaseAssetTag

      tag_name :common_stylesheet_tag

      def display
        if wagon
          "<!-- Common stylesheet here -->"
        else
          helpers.stylesheet_link_tag("common/header", "common/footer", "common/sign_up_form", :media => :all)
        end
      end

    end

  end
end