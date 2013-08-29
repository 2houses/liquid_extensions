module LiquidExtensions
  module Tags
    class CommonHeader < ::Solid::Tag

      tag_name :common_header
      context_attribute :wagon

      def display
        if wagon
          "<div style='width: 100%; height: 50px; background-color: rgb(160, 155, 50); color: #fff;'>Header Here</div>"
        else
          current_context.registers[:controller].send(:render_to_string, partial: "/common/shared/header", locals: { current_user: current_context.registers[:controller].send(:current_user) })
        end
      end

    end

  end
end