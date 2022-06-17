--select * from [Member] where [address] like N'臺北____基隆%'
--update [Member] set [age] = 16 where [id] = 'john'
insert into [Member] ([id], [password], [sex], [age], [phone], [address]) values ('alice', '13579', 0, 37, '03-5712121', N'新竹市大學路1001號')
--delete from [Member] where [id] = 'alice'