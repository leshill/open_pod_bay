module Pod
  class Command
    class Reinstall < Command

      self.summary = 'Run pod install and then open the workspace'
      self.description = <<-DESC
         Runs pod install before trying to reopen the workspace with pod open.
      DESC

      def initialize(argv)
        super
      end

      def validate!
        super
      end

      def run
        `pod install && pod open`
      end

    end
  end
end
