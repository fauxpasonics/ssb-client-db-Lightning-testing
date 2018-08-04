SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vw_VENUTIZE_UserProfileMap]
AS
    (
      SELECT    p1.UserID
              , p2.PropertyValue AS ANetCustomerProfileID
              , p3.PropertyValue AS Biography
              , p4.PropertyValue AS Birthdate
              , p5.PropertyValue AS Cell
              , p6.PropertyValue AS City
              , p7.PropertyValue AS Country
              , p8.PropertyValue AS Email
              , p9.PropertyValue AS FacebookID
              , p10.PropertyValue AS FacebookToken
              , p11.PropertyValue AS FavoritePlayer
              , p12.PropertyValue AS Fax
              , p13.PropertyValue AS FirstName
              , p14.PropertyValue AS FirstTimeLogin
              , p15.PropertyValue AS Gender
              , p16.PropertyValue AS IM
              , p17.PropertyValue AS InstagramID
              , p18.PropertyValue AS InstagramToken
              , p19.PropertyValue AS LastName
              , p20.PropertyValue AS MiddleName
              , p21.PropertyValue AS ParentUserID
              , p22.PropertyValue AS Photo
              , p23.PropertyValue AS PostalCode
              , p24.PropertyValue AS PreferredLocale
              , p25.PropertyValue AS PreferredTimeZone
              , p26.PropertyValue AS Prefix
              , p27.PropertyValue AS ReferralChannel
              , p28.PropertyValue AS ReferralChannelURL
              , p29.PropertyValue AS ReferralCode
              , p30.PropertyValue AS Region
              , p31.PropertyValue AS Street
              , p32.PropertyValue AS Suffix
              , p33.PropertyValue AS TeamUniqueID
              , p34.PropertyValue AS Telephone
              , p35.PropertyValue AS TicketAccountID
              , p36.PropertyValue AS TicketUserID
              , p37.PropertyValue AS TwitterID
              , p38.PropertyValue AS TwitterToken
              , p39.PropertyValue AS TwitterTokenSecret
              , p40.PropertyValue AS Unit
              , p41.PropertyValue AS Website
      FROM      (
                  SELECT DISTINCT
                            UserID
                  FROM      dbo.vw_VENUTIZE_UserProfileRank
                ) AS p1
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p2 ON p1.UserId = p2.UserID
                                                     AND p2.PropertyName = 'ANetCustomerProfileID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p3 ON p1.UserId = p3.UserID
                                                     AND p3.PropertyName = 'Biography'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p4 ON p1.UserId = p4.UserID
                                                     AND p4.PropertyName = 'Birthdate'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p5 ON p1.UserId = p5.UserID
                                                     AND p5.PropertyName = 'Cell'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p6 ON p1.UserId = p6.UserID
                                                     AND p6.PropertyName = 'City'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p7 ON p1.UserId = p7.UserID
                                                     AND p7.PropertyName = 'Country'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p8 ON p1.UserId = p8.UserID
                                                     AND p8.PropertyName = 'Email'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p9 ON p1.UserId = p9.UserID
                                                     AND p9.PropertyName = 'FacebookID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p10 ON p1.UserId = p10.UserID
                                                      AND p10.PropertyName = 'FacebookToken'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p11 ON p1.UserId = p11.UserID
                                                      AND p11.PropertyName = 'FavoritePlayer'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p12 ON p1.UserId = p12.UserID
                                                      AND p12.PropertyName = 'Fax'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p13 ON p1.UserId = p13.UserID
                                                      AND p13.PropertyName = 'FirstName'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p14 ON p1.UserId = p14.UserID
                                                      AND p14.PropertyName = 'FirstTimeLogin'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p15 ON p1.UserId = p15.UserID
                                                      AND p15.PropertyName = 'Gender'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p16 ON p1.UserId = p16.UserID
                                                      AND p16.PropertyName = 'IM'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p17 ON p1.UserId = p17.UserID
                                                      AND p17.PropertyName = 'InstagramID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p18 ON p1.UserId = p18.UserID
                                                      AND p18.PropertyName = 'InstagramToken'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p19 ON p1.UserId = p19.UserID
                                                      AND p19.PropertyName = 'LastName'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p20 ON p1.UserId = p20.UserID
                                                      AND p20.PropertyName = 'MiddleName'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p21 ON p1.UserId = p21.UserID
                                                      AND p21.PropertyName = 'ParentUserID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p22 ON p1.UserId = p22.UserID
                                                      AND p22.PropertyName = 'Photo'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p23 ON p1.UserId = p23.UserID
                                                      AND p23.PropertyName = 'PostalCode'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p24 ON p1.UserId = p24.UserID
                                                      AND p24.PropertyName = 'PreferredLocale'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p25 ON p1.UserId = p25.UserID
                                                      AND p25.PropertyName = 'PreferredTimeZone'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p26 ON p1.UserId = p26.UserID
                                                      AND p26.PropertyName = 'Prefix'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p27 ON p1.UserId = p27.UserID
                                                      AND p27.PropertyName = 'ReferralChannel'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p28 ON p1.UserId = p28.UserID
                                                      AND p28.PropertyName = 'ReferralChannelURL'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p29 ON p1.UserId = p29.UserID
                                                      AND p29.PropertyName = 'ReferralCode'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p30 ON p1.UserId = p30.UserID
                                                      AND p30.PropertyName = 'Region'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p31 ON p1.UserId = p31.UserID
                                                      AND p31.PropertyName = 'Street'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p32 ON p1.UserId = p32.UserID
                                                      AND p32.PropertyName = 'Suffix'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p33 ON p1.UserId = p33.UserID
                                                      AND p33.PropertyName = 'TeamUniqueID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p34 ON p1.UserId = p34.UserID
                                                      AND p34.PropertyName = 'Telephone'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p35 ON p1.UserId = p35.UserID
                                                      AND p35.PropertyName = 'TicketAccountID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p36 ON p1.UserId = p36.UserID
                                                      AND p36.PropertyName = 'TicketUserID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p37 ON p1.UserId = p37.UserID
                                                      AND p37.PropertyName = 'TwitterID'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p38 ON p1.UserId = p38.UserID
                                                      AND p38.PropertyName = 'TwitterToken'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p39 ON p1.UserId = p39.UserID
                                                      AND p39.PropertyName = 'TwitterTokenSecret'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p40 ON p1.UserId = p40.UserID
                                                      AND p40.PropertyName = 'Unit'
      LEFT JOIN dbo.vw_VENUTIZE_UserProfileRank p41 ON p1.UserId = p41.UserID
                                                      AND p41.PropertyName = 'Website'
    );
	

GO
