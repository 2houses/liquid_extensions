module LiquidExtensions
  module Tags
    class BaseAssetTag < ::Solid::Tag

      context_attribute :wagon

      def helpers
        @helpers ||= ActionController::Base.helpers
      end

    end
  end
end