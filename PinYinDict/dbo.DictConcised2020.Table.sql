USE [PinYinDict]
GO
/****** Object:  Table [dbo].[DictConcised2020]    Script Date: 2021/2/23 下午 06:27:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictConcised2020](
	[字詞號] [nvarchar](255) NULL,
	[字詞名] [nvarchar](255) NULL,
	[部首字] [nvarchar](255) NULL,
	[注音一式] [nvarchar](255) NULL,
	[漢語拼音] [nvarchar](255) NULL,
	[相似詞] [nvarchar](255) NULL,
	[相反詞] [nvarchar](255) NULL,
	[多音參見訊息] [nvarchar](255) NULL
) ON [PRIMARY]
GO
