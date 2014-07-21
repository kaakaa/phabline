require 'mysql'

client = Mysql.connect('127.0.0.1', 'root', 'new-password', 'test')
client.query("SELECT * FROM test_table").each do | r |
	p r
end

