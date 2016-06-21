require 'drb/drb'

class Info

      def get_time
        "It is now #{Time.now}"
      end

      def count (serial)
        thing = Marshal.load(serial)
        "Size is #{thing.length()}"
      end

      def mylambda (func, args)
          l = eval(func)
          l.call(*args)
      end
end

DRb.start_service('druby://localhost:2222', Info.new)
DRb.thread.join
