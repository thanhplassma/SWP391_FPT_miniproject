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

INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (1, 2, 2, 1, N'Jobb', N'green cheeked', 0, N'avatar_user.jpg', NULL)
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (11, 2, 1, 3, N'Tweety', N'asdf', 0, N'avatar_user.jpg', N'fda')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (12, 2, 3, 2, N'asdf', N'', 1, N'avatar_user.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (13, 2, 3, 2, N'asdf', N'', 1, N'bird-care.jpg', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (14, 2, 3, 2, N'tokodask', N'', 1, N'bird-care.jpg', N'')
SET IDENTITY_INSERT [dbo].[Bird] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (1, N'U1@gmail.com', N'12345', N'ADMIN_CORE', N'somewhere', N'0111111111', 1, 1, NULL, NULL)
INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (2, N'U2@gmail.com', N'123456', N'USER_TEST', N'somewhere', N'0111111111', 0, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (13, 2, 11, CAST(N'2023-03-10' AS Date), CAST(N'2023-03-12' AS Date), 3)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (14, 2, 1, CAST(N'2023-03-11' AS Date), CAST(N'2023-03-13' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_amount], [payment_status], [payment_method], [date]) VALUES (2, 13, 1550, 1, N'0', CAST(N'2023-03-13' AS Date))
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (1, N'Food and Supplies', N'We offer a wide range of bird food, supplements, and other supplies to ensure that your pet receives the best possible nutrition. Our knowledgeable staff can help you choose the right food and supplements for your bird''s specific needs.', 1, 200, N'bird-food', 0, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (2, N'Boarding', N'When you''re away, our bird boarding services provide a safe and comfortable environment for your pet. Our facilities are staffed 24/7, and our experienced caretakers will provide your bird with the care and attention they need.', 1, 200, N'bird-boarding', 1, 1)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (3, N'Grooming', N'We offer bird grooming services to keep your pet looking and feeling their best. Our team of experts can help with beak and nail trimming, wing clipping, and feather maintenance.', 1, 200, N'bird-grooming', 0, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (4, N'Training', N'Our bird training services can help your pet develop important life skills and improve their behavior. We offer basic training, tricks, and socialization to help your bird reach their full potential.', 1, 200, N'bird-training', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (5, N'Play areas', N'Our spacious bird play areas provide plenty of room for your pet to fly and play. Our play areas are designed to keep your bird safe and entertained.', 1, 200, N'bird-play-area', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (6, N'Enrichment activities', N'Our team of experts can create bird enrichment activities to keep your pet entertained and stimulated. Our activities range from bird puzzles and games to training sessions and interactive play.', 1, 200, N'bird-wallpaper2', 0, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (7, N'Photography', N'Taking photographs of birds while they are staying at the accommodation to document their stay', 1, 200, N'bird-photography', 1, 0)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image], [isHightlight], [isPack]) VALUES (8, N'Bird Rescue and Rehabilitation Centers', N'Bird rescue and rehabilitation centers provide medical care and rehabilitation services for injured or sick birds. They also offer temporary accommodations for birds that cannot be released back into the wild due to their injuries.', 1, 200, N'bird-rescue', 0, 0)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (22, 13, 1, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (23, 13, 2, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (24, 13, 3, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (25, 13, 4, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (26, 13, 5, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (27, 13, 6, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (28, 13, 7, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (29, 14, 2, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (30, 14, 3, 200, 0)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price], [quantity]) VALUES (31, 14, 4, 200, 0)
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReport] ON 

INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_image], [service_report_text], [feedback_content]) VALUES (116, 13, CAST(N'2023-03-10' AS Date), N'img text 1', N'report text 1', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_image], [service_report_text], [feedback_content]) VALUES (124, 13, CAST(N'2023-03-11' AS Date), N'img text 2', N'report text 2', NULL)
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [date], [service_report_image], [service_report_text], [feedback_content]) VALUES (137, 13, CAST(N'2023-03-12' AS Date), N'img text 3', N'report text 3', NULL)
SET IDENTITY_INSERT [dbo].[DailyReport] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [title], [content], [reference]) VALUES (1, N'How to take care a bird', N'Caring for a bird can be a rewarding and fulfilling experience, but it also requires a lot of responsibility and commitment. Birds are social animals that need attention, care, and stimulation to thrive. In this article, we will discuss some essential tips on how to care for your bird.

Choose the Right Cage: The cage is where your bird will spend most of its time, so it''s important to choose the right size and type of cage. It should be large enough to allow your bird to move around freely and to stretch its wings. The bars should be spaced closely enough to prevent your bird from escaping, and the cage should be made of a durable, non-toxic material. Avoid cages with sharp edges, as they can injure your bird.

Provide a Healthy Diet: A balanced diet is essential for your bird''s health and well-being. Provide your bird with fresh fruits and vegetables, high-quality pellets, and a small amount of seeds. Avoid feeding your bird sugary and salty foods, as well as avocado, chocolate, and caffeine, as they can be toxic to birds.

Offer Fresh Water: Clean, fresh water should always be available for your bird. Change the water in its bowl at least once a day and make sure the bowl is cleaned regularly. Birds are sensitive to chlorine, so use bottled or filtered water if your tap water is heavily chlorinated.

Maintain Good Hygiene: Keeping your bird''s cage and surrounding area clean is important for its health. Clean the cage regularly and change the bedding at least once a week. Use a non-toxic cleaner and rinse everything thoroughly. Wash your hands before and after handling your bird, and discourage others from handling it if they are sick.

Provide Toys and Stimulation: Birds are intelligent animals that need mental stimulation to stay healthy and happy. Provide your bird with toys and activities that encourage exploration and play. You can also rotate the toys to keep your bird interested.

Spend Time with Your Bird: Birds are social animals and need attention from their owners. Spend time with your bird every day, talking, singing, or simply being in the same room. Birds also benefit from supervised time outside the cage, but make sure the area is bird-safe and free from hazards.

Regular Check-ups: Regular check-ups with an avian veterinarian are essential for your bird''s health. Your vet can help you identify any health problems early and provide advice on how to care for your bird.

In conclusion, caring for a bird requires attention, care, and commitment. Providing a healthy diet, a clean environment, mental stimulation, and social interaction are all essential for your bird''s health and well-being. By following these tips, you can provide your feathered friend with a happy and healthy life.', N'Ref1')
INSERT [dbo].[Post] ([post_id], [title], [content], [reference]) VALUES (2, N'Title2', N'Content2', N'Ref2')
INSERT [dbo].[Post] ([post_id], [title], [content], [reference]) VALUES (3, N'Title3', N'Content3', N'Ref3')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
