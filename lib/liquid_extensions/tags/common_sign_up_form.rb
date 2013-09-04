module LiquidExtensions
  module Tags
    class CommonSignUpForm < ::Solid::Tag

      tag_name :common_sign_up_form
      context_attribute :wagon

      def display
        if wagon
          "<div style='width: 100%; height: 50px; background-color: #333; color: #fff;'>Sign Up Form Here</div>"
        else
          current_context.registers[:controller].send(:render_to_string, partial: "/common/shared/sign_up_form", locals: { current_user: current_context.registers[:controller].send(:current_user) })
        end
      end

    end

  end
end