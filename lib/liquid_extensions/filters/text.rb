module Locomotive
  module Liquid
    module Filters
      module Text

        def encode(input)
          Rack::Utils.escape(input)
        end

      end

      ::Liquid::Template.register_filter(Text)

    end
  end
end