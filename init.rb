require 'logger'

def rand_bool
  [true, false].sample
  # true
end

class String
  def initial
    self[0,1]
  end
end

class SimpleLogger
  def self.initiate_logger
    logger = Logger.new(STDOUT)
    logger.formatter = proc do |severity, datetime, progname, msg|
      "LOG:#{severity.initial}: #{msg}\n"
    end
    logger
  end
end