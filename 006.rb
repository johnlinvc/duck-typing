class TextMessenger; end
class PictureMessenger; end
class VideoMessenger; end
class SlackMessenger
  def message(type)
    name = type.class.name.match(/(.*)Messenger/)[1]
    "#{name.downcase} message"
  end
end
