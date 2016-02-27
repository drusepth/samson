class SomeObject
  def self.new *_
    SomeObject.sample_object
  end

  def self.sample_sobject
    {
      foo: "bar",
      biz: "baz",
      bom: 1234,
      wat: true
    }
  end
end
