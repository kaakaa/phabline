require 'mysql'
require 'yaml'

class MySqlAccessor
	def initialize
		config = YAML.load_file(File.expand_path('../../config.yml', File.dirname(__FILE__)))
		@client = Mysql.connect(config["host"], config["user"], config["password"], config["table"])
	end
	
	def test
		@client.query("SELECT * FROM test_table").each do | r |
			p r
		end
	end
end

