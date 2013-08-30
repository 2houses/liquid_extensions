module LiquidExtensions
  module Tags
    class CommonJavascriptIncludeTag < BaseAssetTag

      tag_name :common_javascript_include_tag

      def display
        if wagon
          "<!-- Common javascript here -->"
        else
          helpers.javascript_include_tag("common/header")
        end
      end

    end

  end
end