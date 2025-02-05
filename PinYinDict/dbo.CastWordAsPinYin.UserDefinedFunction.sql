USE [PinYinDict]
GO
/****** Object:  UserDefinedFunction [dbo].[CastWordAsPinYin]    Script Date: 2021/2/23 下午 06:27:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- # 轉字中文字串成拚音字串
-- 範例：
-- print dbo.CastWordAsPinYin('我是天才')
-- print dbo.CastWordAsPinYin('今天天氣真好')
CREATE FUNCTION [dbo].[CastWordAsPinYin]
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
	DECLARE @pinyin NVARCHAR(3);

	WHILE @i <= @len
	BEGIN
	  SET @word = SUBSTRING(@str,@i,1);
	  SELECT TOP 1 @pinyin = pinyin FROM dbo.ZhuYinDict WHERE word = @word;
	  SET @ret = @ret + ISNULL(@pinyin,'');
	  SET @i = @i + 1;
	END 

	RETURN @ret;
END
GO
