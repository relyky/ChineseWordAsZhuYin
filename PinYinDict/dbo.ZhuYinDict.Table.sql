USE [PinYinDict]
GO
/****** Object:  Table [dbo].[ZhuYinDict]    Script Date: 2021/2/23 下午 06:27:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZhuYinDict](
	[word] [nchar](1) NOT NULL,
	[pinyin] [nvarchar](3) NOT NULL,
	[zhuyin] [nvarchar](4) NOT NULL,
	[radical] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZhuYinDict', @level2type=N'COLUMN',@level2name=N'word'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拚音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZhuYinDict', @level2type=N'COLUMN',@level2name=N'pinyin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注音一式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZhuYinDict', @level2type=N'COLUMN',@level2name=N'zhuyin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部首' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZhuYinDict', @level2type=N'COLUMN',@level2name=N'radical'
GO
