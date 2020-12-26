# Test record types https://github.com/ruby/rbs/blob/master/docs/syntax.md#record-type
class AppData
  def self.sum(data)
    data[:first] + data[:second]
  end
end

class AppData2
  def self.sum(data)
    data[:first] + data[:second]
  end
end

AppData.sum({first: 1, second: 3})
AppData2.sum({"first" => 1, "second" => 3})
