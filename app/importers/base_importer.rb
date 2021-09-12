class BaseImporter
  def initialize(data)
    @data = data
  end

  def import
    raise NotImplementedError
  end

  protected

    attr_reader :data
end