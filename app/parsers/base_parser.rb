class BaseParser
  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    raise NotImplementedError
  end

  protected

    attr_reader :file_path
end
