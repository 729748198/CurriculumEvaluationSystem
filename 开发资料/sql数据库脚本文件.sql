USE [curriculumEvaluationSystem]
GO
/****** Object:  Table [dbo].[teaInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teaInfo](
	[teaNum] [int] NOT NULL,
	[teaName] [varchar](10) NOT NULL,
	[teaSex] [varchar](2) NOT NULL,
	[teaBirthday] [date] NOT NULL,
	[teaFrom] [varchar](50) NOT NULL,
	[teaPhone] [int] NOT NULL,
	[teaRemarks] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[teaNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stuInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stuInfo](
	[stuNum] [int] NOT NULL,
	[stuName] [varchar](10) NOT NULL,
	[stuSex] [varchar](2) NOT NULL,
	[stuGrade] [int] NOT NULL,
	[stuFrom] [varchar](50) NOT NULL,
	[stuPhone] [int] NOT NULL,
	[stuRemarks] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[stuNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[noticeBarInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[noticeBarInfo](
	[noticeBarInfoNum] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](80) NOT NULL,
	[releaseTime] [datetime] NULL,
	[author] [varchar](10) NOT NULL,
	[content] [varchar](255) NOT NULL,
	[noticeBarInfoLimit] [tinyint] NULL,
 CONSTRAINT [PK__noticeBa__27894E0D7B3127A0] PRIMARY KEY CLUSTERED 
(
	[noticeBarInfoNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[commentContent]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[commentContent](
	[comConNum] [int] IDENTITY(1,1) NOT NULL,
	[theFirstCon] [varchar](100) NOT NULL,
	[theSecondCon] [varchar](100) NOT NULL,
	[theThirdCon] [varchar](100) NOT NULL,
	[theFourthCon] [varchar](100) NOT NULL,
	[theFifthCon] [varchar](100) NOT NULL,
	[theSixthCon] [varchar](100) NOT NULL,
	[theSeventhCon] [varchar](100) NOT NULL,
	[theEighthCon] [varchar](100) NOT NULL,
	[theNinthCon] [varchar](100) NOT NULL,
	[theTenthCon] [varchar](100) NOT NULL,
	[comConRemarks] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[comConNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminInfo](
	[adminNum] [int] NOT NULL,
	[adminName] [varchar](10) NOT NULL,
	[adminPhone] [int] NOT NULL,
	[adminLimit] [tinyint] NOT NULL,
	[adminRemarks] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[adminNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userLogin]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userLogin](
	[accountNum] [int] NOT NULL,
	[userName] [varchar](10) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[userType] [varchar](10) NOT NULL,
	[perLimit] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teaPraiseListInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teaPraiseListInfo](
	[teaPraiseListNum] [int] IDENTITY(1,1) NOT NULL,
	[couNum] [int] NOT NULL,
	[teaNum] [int] NOT NULL,
	[couTerm] [int] NOT NULL,
	[theAllAvgScore] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[teaPraiseListNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courseInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[courseInfo](
	[couNum] [int] NOT NULL,
	[teaNum] [int] NOT NULL,
	[couName] [varchar](50) NOT NULL,
	[couTerm] [int] NOT NULL,
	[couFrom] [varchar](50) NOT NULL,
	[couTime] [varchar](20) NOT NULL,
	[couPlace] [varchar](20) NOT NULL,
	[couCredit] [tinyint] NOT NULL,
	[couRemarks] [text] NULL,
 CONSTRAINT [PK__courseIn__19479627723D9036] PRIMARY KEY CLUSTERED 
(
	[couNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[couClassStuInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[couClassStuInfo](
	[couClassStuInfoNum] [int] IDENTITY(1,1) NOT NULL,
	[couNum] [int] NOT NULL,
	[stuNum] [int] NOT NULL,
	[isTeach] [tinyint] NULL,
 CONSTRAINT [PK__couClass__6D6DD87A07020F21] PRIMARY KEY CLUSTERED 
(
	[couClassStuInfoNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[commentCouInfo]    Script Date: 11/25/2017 11:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commentCouInfo](
	[comCouNum] [int] IDENTITY(1,1) NOT NULL,
	[couNum] [int] NOT NULL,
	[stuNum] [int] NOT NULL,
	[comDate] [datetime] NULL,
	[comFirstScore] [tinyint] NOT NULL,
	[comSecondScore] [tinyint] NOT NULL,
	[comThirdScore] [tinyint] NOT NULL,
	[comFourthScore] [tinyint] NOT NULL,
	[comFifthScore] [tinyint] NOT NULL,
	[comSixthScore] [tinyint] NOT NULL,
	[comSeventhScore] [tinyint] NOT NULL,
	[comEighthScore] [tinyint] NOT NULL,
	[comNinthScore] [tinyint] NOT NULL,
	[comTenthScore] [tinyint] NOT NULL,
	[comLeaMsg] [text] NULL,
	[comTotalScore] [tinyint] NOT NULL,
	[comAvgScore] [real] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[comCouNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF__commentCo__comDa__1BFD2C07]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[commentCouInfo] ADD  DEFAULT (getdate()) FOR [comDate]
GO
/****** Object:  Default [DF__couClassS__isTea__1CF15040]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[couClassStuInfo] ADD  CONSTRAINT [DF__couClassS__isTea__1CF15040]  DEFAULT ((0)) FOR [isTeach]
GO
/****** Object:  Default [DF__noticeBar__relea__4F7CD00D]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[noticeBarInfo] ADD  CONSTRAINT [DF__noticeBar__relea__4F7CD00D]  DEFAULT (getdate()) FOR [releaseTime]
GO
/****** Object:  Default [DF__noticeBar__notic__5070F446]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[noticeBarInfo] ADD  CONSTRAINT [DF__noticeBar__notic__5070F446]  DEFAULT ((0)) FOR [noticeBarInfoLimit]
GO
/****** Object:  Default [DF__userLogin__perLi__1FCDBCEB]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[userLogin] ADD  DEFAULT ((0)) FOR [perLimit]
GO
/****** Object:  ForeignKey [FK__commentCo__couNu__300424B4]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[commentCouInfo]  WITH CHECK ADD  CONSTRAINT [FK__commentCo__couNu__300424B4] FOREIGN KEY([couNum])
REFERENCES [dbo].[courseInfo] ([couNum])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[commentCouInfo] CHECK CONSTRAINT [FK__commentCo__couNu__300424B4]
GO
/****** Object:  ForeignKey [FK__commentCo__stuNu__21B6055D]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[commentCouInfo]  WITH CHECK ADD FOREIGN KEY([stuNum])
REFERENCES [dbo].[stuInfo] ([stuNum])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  ForeignKey [FK__couClassS__couNu__34C8D9D1]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[couClassStuInfo]  WITH CHECK ADD  CONSTRAINT [FK__couClassS__couNu__34C8D9D1] FOREIGN KEY([couNum])
REFERENCES [dbo].[courseInfo] ([couNum])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[couClassStuInfo] CHECK CONSTRAINT [FK__couClassS__couNu__34C8D9D1]
GO
/****** Object:  ForeignKey [FK__couClassS__stuNu__239E4DCF]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[couClassStuInfo]  WITH CHECK ADD  CONSTRAINT [FK__couClassS__stuNu__239E4DCF] FOREIGN KEY([stuNum])
REFERENCES [dbo].[stuInfo] ([stuNum])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[couClassStuInfo] CHECK CONSTRAINT [FK__couClassS__stuNu__239E4DCF]
GO
/****** Object:  ForeignKey [FK__courseInf__teaNu__2C3393D0]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[courseInfo]  WITH CHECK ADD  CONSTRAINT [FK__courseInf__teaNu__2C3393D0] FOREIGN KEY([teaNum])
REFERENCES [dbo].[teaInfo] ([teaNum])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[courseInfo] CHECK CONSTRAINT [FK__courseInf__teaNu__2C3393D0]
GO
/****** Object:  ForeignKey [FK__teaPraise__teaNu__25869641]    Script Date: 11/25/2017 11:51:37 ******/
ALTER TABLE [dbo].[teaPraiseListInfo]  WITH CHECK ADD FOREIGN KEY([teaNum])
REFERENCES [dbo].[teaInfo] ([teaNum])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
