module Pod
  class Command
    class Reinstall < Command

      self.summary = 'Install dependencies and then re-open the workspace'
      self.description = <<-DESC
         Runs 'pod install' before trying to reopen the workspace with 'pod open'.
      DESC

      def initialize(argv)
        super
      end

      def validate!
        super
      end

      def run
        # Output the results of pod install in realtime
        # http://stackoverflow.com/questions/10224481/running-a-command-from-ruby-displaying-and-capturing-the-output
        output = []
        r, io = IO.pipe
        fork do
          system("pod install", out: io, err: :out)
        end
        io.close
        r.each_line{|l| puts l; output << l.chomp}

        `pod open`
      end

    end
  end
end
