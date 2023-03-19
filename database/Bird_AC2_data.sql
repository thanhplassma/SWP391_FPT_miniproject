USE [BirdAccommodation]
GO
SET IDENTITY_INSERT [dbo].[BirdType] ON 

INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (1, N'Ostrich')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (2, N'Cockatiel')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (3, N'Bald Eagle')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (4, N'Hummingbird')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (5, N'Pelican')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (6, N'Owl')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (7, N'Toucan')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (8, N'Flamingo')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (9, N'Crow')
SET IDENTITY_INSERT [dbo].[BirdType] OFF
GO
SET IDENTITY_INSERT [dbo].[Bird] ON 

INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (1, 2, 2, 1, N'Jobb', N'green cheeked', 0, N'bird_img1.jpg', NULL)
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (11, 2, 1, 3, N'Tweety', N'asdf', 0, N'bird_img1.jpg', N'fda')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (12, 2, 3, 2, N'asdf', N'', 1, N'bird_img1.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (13, 2, 3, 2, N'asdf', N'', 1, N'bird_img2.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (14, 2, 3, 2, N'tokodask', N'', 1, N'bird_img1.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (15, 2, 3, 2, N'asfdsafa', N'', 1, N'bird_img2.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (16, 2, 8, 1, N'Pheeeeeeee', N'crazy', 0, N'bird_img2.jpg', N'...')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (17, 2, 3, 3, N'eehehe', N'old', 1, N'bird_img2.jpg', N'very old')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (18, 2, 8, 2, N'Tykko', N'', 0, N'img_bird3.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (19, 2, 2, 3, N'Jobb child', N'3 bird', 0, N'bird-cardinal-nest-box.jpg', N'')
SET IDENTITY_INSERT [dbo].[Bird] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (1, N'U1@gmail.com', N'12345', N'ADMIN_CORE', N'somewhere', N'0111111111', 1, 1, N'bird_phototgraphy.jpg', NULL)
INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (2, N'U2@gmail.com', N'123456', N'USER_TEST', N'somewhere', N'0111111111', 0, 1, N'bird-house-design.jpg', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (13, 2, 11, CAST(N'2023-03-10' AS Date), CAST(N'2023-03-12' AS Date), 3)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (14, 2, 1, CAST(N'2023-03-11' AS Date), CAST(N'2023-03-13' AS Date), 1)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (15, 2, 14, CAST(N'2023-03-14' AS Date), CAST(N'2023-03-16' AS Date), 3)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (16, 2, 17, CAST(N'2023-03-14' AS Date), CAST(N'2023-03-22' AS Date), 2)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (24, 2, 12, CAST(N'2023-03-15' AS Date), CAST(N'2023-03-17' AS Date), 0)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (25, 2, 18, CAST(N'2023-03-16' AS Date), CAST(N'2023-03-17' AS Date), 4)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (32, 2, 12, CAST(N'2023-03-16' AS Date), CAST(N'2023-03-17' AS Date), 3)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (33, 2, 11, CAST(N'2023-03-17' AS Date), CAST(N'2023-03-19' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (2, 13, 2800, 1, N'0', CAST(N'2023-03-16' AS Date), N'bird1.jpg')
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (3, 16, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (4, 15, 2000, 1, N'1', CAST(N'2023-03-17' AS Date), N'bird_boarding.jpg')
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (9, 32, 2600, 1, N'0', CAST(N'2023-03-19' AS Date), N'bird_grooming.jpg')
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (10, 25, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (11, 24, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (12, 14, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_service_amount], [payment_status], [payment_method], [checkout_date], [checkout_img]) VALUES (13, 33, 0, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (1, N'Food and Supplies', N'We offer a wide range of bird food, supplements, and other supplies to ensure that your pet receives the best possible nutrition. Our knowledgeable staff can help you choose the right food and supplements for your bird''s specific needs.', 1, 200, N'bird-food.jpg', 0, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (2, N'Boarding', N'When you''re away, our bird boarding services provide a safe and comfortable environment for your pet. Our facilities are staffed 24/7, and our experienced caretakers will provide your bird with the care and attention they need.', 1, 200, N'bird-boarding.jpg', 1, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (3, N'Grooming', N'We offer bird grooming services to keep your pet looking and feeling their best. Our team of experts can help with beak and nail trimming, wing clipping, and feather maintenance.', 1, 200, N'bird-grooming.jpg', 0, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (4, N'Training', N'Our bird training services can help your pet develop important life skills and improve their behavior. We offer basic training, tricks, and socialization to help your bird reach their full potential.', 1, 200, N'bird-training.jpg', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (5, N'Play areas', N'Our spacious bird play areas provide plenty of room for your pet to fly and play. Our play areas are designed to keep your bird safe and entertained.', 1, 200, N'bird-play-area.jpg', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (6, N'Enrichment activities', N'Our team of experts can create bird enrichment activities to keep your pet entertained and stimulated. Our activities range from bird puzzles and games to training sessions and interactive play.', 1, 200, N'bird-wallpaper2.jpg', 0, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (7, N'Photography', N'Taking photographs of birds while they are staying at the accommodation to document their stay', 1, 200, N'bird-photography.jpg', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (8, N'Bird Rescue and Rehabilitation Centers', N'Bird rescue and rehabilitation centers provide medical care and rehabilitation services for injured or sick birds. They also offer temporary accommodations for birds that cannot be released back into the wild due to their injuries.', 1, 200, N'bird-rescue.jpg', 0, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHighlight], [isPack]) VALUES (9, N'Birdhouse Design and Installation', N'Provide birdhouse design and installation services for clients who want to build custom birdhouses that cater to the specific needs of different bird species.', 1, 200, N'bird-house-design.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (22, 13, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (23, 13, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (24, 13, 3, 200, 4, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (25, 13, 4, 200, 2, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (26, 13, 5, 200, 2, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (27, 13, 6, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (28, 13, 7, 200, 3, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (29, 14, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (30, 14, 3, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (31, 14, 4, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (32, 15, 4, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (33, 15, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (34, 16, 5, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (35, 16, 7, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (36, 16, 4, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (70, 24, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (71, 24, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (72, 24, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (73, 24, 3, 200, 3, 3)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (74, 24, 4, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (76, 25, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (77, 25, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (78, 25, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (79, 25, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (80, 25, 6, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (135, 32, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (136, 32, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (137, 32, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (138, 32, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (139, 32, 3, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (140, 32, 4, 200, 2, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (141, 32, 5, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (142, 32, 6, 200, 3, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (143, 32, 7, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (144, 16, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (145, 16, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (146, 16, 3, 200, 2, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (147, 15, 3, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (148, 15, 5, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (149, 15, 6, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (150, 15, 7, 200, 1, 1)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (151, 15, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (152, 15, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (153, 16, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (154, 16, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (155, 16, 6, 200, 2, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (156, 33, 1, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (157, 33, 2, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (158, 33, 8, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (159, 33, 9, 200, 0, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (160, 33, 3, 200, 1, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (161, 33, 4, 200, 3, 2)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity], [remain]) VALUES (162, 33, 5, 200, 2, 2)
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReport] ON 

INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (116, 13, CAST(N'2023-03-12' AS Date), N'report updated', N'it good then')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (124, 13, CAST(N'2023-03-13' AS Date), N'report updated', N'it ok')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (137, 13, CAST(N'2023-03-14' AS Date), N'report updated', N'nice')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (157, 13, CAST(N'2023-03-15' AS Date), N'your bird is great', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (169, 15, CAST(N'2023-03-15' AS Date), N'update report and upload all', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (175, 16, CAST(N'2023-03-15' AS Date), N'upload all', N'upload all !!!')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (176, 16, CAST(N'2023-03-16' AS Date), N'more report for you', N'feedback from me, please have a good care to my bird !')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (177, 13, CAST(N'2023-03-16' AS Date), N'grooming, training, enrich complete', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (178, 15, CAST(N'2023-03-16' AS Date), N'revert training service', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (179, 16, CAST(N'2023-03-17' AS Date), N'Your bird with service grooming are going very well, we are plaining do 2 groomings today, please check on image we send, and leave a feedback so we can bring you more pleasant with boarding !', N'It''s ok')
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (180, 32, CAST(N'2023-03-17' AS Date), N'hello there', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_text], [feedback_content]) VALUES (181, 33, CAST(N'2023-03-17' AS Date), N'using grooming service', NULL)
SET IDENTITY_INSERT [dbo].[DailyReport] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([review_id], [user_id], [booking_id], [rating], [comment]) VALUES (1, 2, 13, 4.5, N'Thank you so much for taking care of my bird while I was away. I appreciate the daily updates and photos you sent, which helped me feel connected with my bird even though I was far away. It''s clear that you took the time to get to know my bird and gave them the attention and care they needed. I will definitely recommend your services to other bird owners!')
INSERT [dbo].[Review] ([review_id], [user_id], [booking_id], [rating], [comment]) VALUES (2, 2, 15, 5, N'I just wanted to say how grateful I am for the wonderful care you provided for my bird during their stay at your facility. It''s clear that you have a lot of experience with birds and know how to make them feel comfortable and happy. I was impressed with the cleanliness and safety of the accommodation, and the personalized attention you gave my bird. I wouldn''t hesitate to bring my bird back here again in the future.')
INSERT [dbo].[Review] ([review_id], [user_id], [booking_id], [rating], [comment]) VALUES (3, 2, 32, 4, N'I want to express my appreciation for the exceptional care you provided for my bird while I was away. It was evident that you are passionate about your work and genuinely care about the well-being of the birds under your care. I was impressed with the level of professionalism and attention to detail, and I felt confident that my bird was in good hands. Thank you for providing such a positive experience for both me and my bird.')
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReportImage] ON 

INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (1, 116, N'abstract01.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (2, 116, N'abstract01.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (3, 116, N'abstract01.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (4, 124, N'abstract02.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (5, 124, N'abstract02.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (6, 137, N'abstract01.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (7, 137, N'abstract02.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (8, 137, N'abstract03.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (9, 137, N'abstract04.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (11, 157, N'moon.png')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (12, 157, N'pot.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (28, 169, N'big-treehouse.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (38, 175, N'bird_train.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (39, 175, N'bird_training.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (40, 176, N'bird-food.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (41, 176, N'bird-house-design.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (42, 177, N'bird_grooming.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (43, 177, N'bird_train.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (44, 177, N'bird1.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (45, 178, N'bird_train.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (46, 178, N'bird_training.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (47, 179, N'grooming1.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (48, 179, N'grooming2.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (49, 180, N'bird-care.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (50, 180, N'bird-house-design.jpg')
INSERT [dbo].[DailyReportImage] ([dr_image_id], [dreport_id], [service_report_image]) VALUES (51, 181, N'bird_grooming.jpg')
SET IDENTITY_INSERT [dbo].[DailyReportImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [title], [content], [reference], [image]) VALUES (1, N'How to take care a bird', N'Caring for a bird can be a rewarding and fulfilling experience, but it also requires a lot of responsibility and commitment. Birds are social animals that need attention, care, and stimulation to thrive. In this article, we will discuss some essential tips on how to care for your bird.

Choose the Right Cage: The cage is where your bird will spend most of its time, so it''s important to choose the right size and type of cage. It should be large enough to allow your bird to move around freely and to stretch its wings. The bars should be spaced closely enough to prevent your bird from escaping, and the cage should be made of a durable, non-toxic material. Avoid cages with sharp edges, as they can injure your bird.

Provide a Healthy Diet: A balanced diet is essential for your bird''s health and well-being. Provide your bird with fresh fruits and vegetables, high-quality pellets, and a small amount of seeds. Avoid feeding your bird sugary and salty foods, as well as avocado, chocolate, and caffeine, as they can be toxic to birds.

Offer Fresh Water: Clean, fresh water should always be available for your bird. Change the water in its bowl at least once a day and make sure the bowl is cleaned regularly. Birds are sensitive to chlorine, so use bottled or filtered water if your tap water is heavily chlorinated.

Maintain Good Hygiene: Keeping your bird''s cage and surrounding area clean is important for its health. Clean the cage regularly and change the bedding at least once a week. Use a non-toxic cleaner and rinse everything thoroughly. Wash your hands before and after handling your bird, and discourage others from handling it if they are sick.

Provide Toys and Stimulation: Birds are intelligent animals that need mental stimulation to stay healthy and happy. Provide your bird with toys and activities that encourage exploration and play. You can also rotate the toys to keep your bird interested.

Spend Time with Your Bird: Birds are social animals and need attention from their owners. Spend time with your bird every day, talking, singing, or simply being in the same room. Birds also benefit from supervised time outside the cage, but make sure the area is bird-safe and free from hazards.

Regular Check-ups: Regular check-ups with an avian veterinarian are essential for your bird''s health. Your vet can help you identify any health problems early and provide advice on how to care for your bird.

In conclusion, caring for a bird requires attention, care, and commitment. Providing a healthy diet, a clean environment, mental stimulation, and social interaction are all essential for your bird''s health and well-being. By following these tips, you can provide your feathered friend with a happy and healthy life.', N'Ref1', NULL)
INSERT [dbo].[Post] ([post_id], [title], [content], [reference], [image]) VALUES (2, N'Title2', N'Content2', N'Ref2', NULL)
INSERT [dbo].[Post] ([post_id], [title], [content], [reference], [image]) VALUES (3, N'Title3', N'Content3', N'Ref3', NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
