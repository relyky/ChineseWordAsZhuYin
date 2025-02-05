USE [PinYinDict]
GO
/****** Object:  View [dbo].[ZhuYinView]    Script Date: 2021/2/23 下午 06:27:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ZhuYinView]
AS
SELECT [字詞名]
,[諧音] = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([注音一式],'(一)',''),'ˊ',''),'ˇ',''),'ˋ',''),'˙',''),'（語音）',''),'（讀音）','')
,[注音一式] = REPLACE(REPLACE(REPLACE([注音一式],'(一)',''),'（語音）',''),'（讀音）','')
,[部首字]
  FROM [PinYinDict].[dbo].[DictConcised2020]
  where 1=1 
  AND [部首字] IS NOT NULL
  AND LEN([字詞名]) = 1
  AND [注音一式] NOT LIKE '(二)%'
  AND [注音一式] NOT LIKE '(三)%'
  AND [注音一式] NOT LIKE '(四)%'
  AND [注音一式] NOT LIKE '(五)%'
  AND [注音一式] NOT LIKE '(六)%'
GO

