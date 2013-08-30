module LiquidExtensions
  module Tags
    class CommonFooter < ::Solid::Tag

      tag_name :common_footer
      context_attribute :wagon

      def display
        if wagon
          "<div style='width: 100%; height: 50px; background-color: rgb(160, 155, 50); color: #fff;'>Footer Here</div>"
        else
          current_context.registers[:controller].send(:render_to_string, partial: "/common/shared/footer")
        end
      end

    end
  end
end
