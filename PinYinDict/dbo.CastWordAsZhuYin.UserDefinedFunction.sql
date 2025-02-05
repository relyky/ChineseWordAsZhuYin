USE [PinYinDict]
GO
/****** Object:  UserDefinedFunction [dbo].[CastWordAsZhuYin]    Script Date: 2021/2/23 下午 06:27:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- # 轉字中文字串成注音字串
-- 範例：
-- print dbo.CastWordAsZhuYin('我是天才')
-- print dbo.CastWordAsZhuYin('今天天氣真好')
CREATE FUNCTION [dbo].[CastWordAsZhuYin]
(
	@str NVARCHAR(50)
)
RETURNS NVARCHAR(150)
AS
BEGIN
	DECLARE @ret NVARCHAR(150) = '';
	DECLARE @len INT = LEN(@str);
	DECLARE @i INT = 1;
	DECLARE @word NCHAR(1);
	DECLARE @zhuyin NVARCHAR(4);

	WHILE @i <= @len
	BEGIN
	  SET @word = SUBSTRING(@str,@i,1);
	  SELECT TOP 1 @zhuyin = zhuyin FROM dbo.ZhuYinDict WHERE word = @word;
	  SET @ret = @ret + ISNULL(@zhuyin,'');
	  SET @i = @i + 1;
	END 

	RETURN @ret;
END
GO
