# frozen_string_literal: true

require "rails/dev_caching"

module Rails
  module Command
    class DevCommand < Base # :nodoc:
      no_commands do
        def help
          say "#{executable(:cache)} # Toggle development mode caching on/off."
        end
      end

      desc "cache", "Toggles development mode caching on/off"
      def cache
        Rails::DevCaching.enable_by_file
      end
    end
  end
end
