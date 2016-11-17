prefix = %w{Text Picture Video Document}
prefix.each do |p|
  class_def = <<-TMP
  class #{p}Messenger
    def m
      "#{p.downcase}"
    end
  end
  TMP
  eval(class_def)
end

class SlackMessenger
  def message(type)
    "#{type.m} message"
  end
end
