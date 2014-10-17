module Ruboty
  module Handlers
    class Silent < Base
      on /(please.*)?(静かにしろ|お静かに|話しかけるな|うるさい|黙れ|だまれ|しゃべるな|喋るな|shut ?up|mute|quiet)(.*please)?/, name: 'shut_up', description: 'ruboty, please stop talking!'
      on /(元気だせよ|静かだね|喋ってよ|喋って|しゃべって|話しかけて|ねぇ|unmute)(!|！)*/, name: 'talk', description: 'ruboty, please talk to me!'

      def shut_up(message)
        hack!(message.robot).shut_up!
      end

      def talk(message)
        hack!(message.robot).talk!
      end

      def hack!(robot)
        robot.extend(Ruboty::Silent)
      end
    end
  end
end
