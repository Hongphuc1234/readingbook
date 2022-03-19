use onl
CREATE TABLE Account(
	UserID int,
	[User] nvarchar(100) not null,
	Pass nvarchar(50) not null,
	name nvarchar(50) not null,
	ad nvarchar(10) not null,
	primary key (UserID)
)
CREATE TABLE Book(
	BookID nvarchar,
	Bookname nvarchar(50),
	[image] nvarchar(500),
	AuthorID int,
	CategoryID int,
	review Ntext,
	primary key(BookID)
)
CREATE TABLE Author(
	AuthorID int,
	AuthorName nvarchar(100) not null,
	Authorimg nvarchar(500),
	[Address] nvarchar(100),
	primary key(AuthorID)
)
CREATE TABLE content(
	chuongID nvarchar(50),
	Chuongname nvarchar(1000) not null,
	noidung Ntext,
	BookID nvarchar,
	primary key(chuongID)
)
CREATE TABLE Category(
	CategoryID int,
	CategoryName nvarchar(100),
	primary key (CategoryID) 
)


INSERT INTO Account(UserID,[User],Pass)
VALUES(1,'ADMIN','123456')
INSERT INTO Author(AuthorID,AuthorName,Authorimg,[Address])
VALUES(1,N'Tố Hữu','https://vi.wikipedia.org/wiki/T%E1%BB%91_H%E1%BB%AFu#/media/T%E1%BA%ADp_tin:To_Huu.jpg',N' xã Quảng Thọ, huyện Quảng Điền, tỉnh Thừa Thiên Huế, Việt Nam'),
(2,N'Nguyễn Nhật Ánh','https://www.nxbtre.com.vn/Images/Writer/nxbtre_thumb_30552016_085555.jpg',N'Việt Nam'),
(3,N'Vũ Trọng Phụng','https://vi.wikipedia.org/wiki/V%C5%A9_Tr%E1%BB%8Dng_Ph%E1%BB%A5ng#/media/T%E1%BA%ADp_tin:Vu_Trong_Phung.jpg',N'Việt Nam'),
(4,N'Ngô Tất Tố','https://vi.wikipedia.org/wiki/Ng%C3%B4_T%E1%BA%A5t_T%E1%BB%91#/media/T%E1%BA%ADp_tin:NgoTatTo.jpg',N'thôn Lộc Hà, xã Mai Lâm, huyện Đông Anh, Hà Nội, Việt Nam'),
(5,'Shakespeare','https://vi.wikipedia.org/wiki/William_Shakespeare#/media/T%E1%BA%ADp_tin:CHANDOS3.jpg','Anh'),
(6,'Aleksandr Sergeyevich Pushkin','https://vi.wikipedia.org/wiki/Aleksandr_Sergeyevich_Pushkin#/media/T%E1%BA%ADp_tin:AleksandrPushkin.jpg','Nga'),
(7,'William Sydney Porter','https://upload.wikimedia.org/wikipedia/commons/c/c6/William_Sydney_Porter_by_doubleday.jpg',N'Mỹ'),
(8,N'Tô Hoài','https://upload.wikimedia.org/wikipedia/commons/f/fb/To_Hoai.jpg',N'phường Nghĩa Đô, quận Cầu Giấy, Hà Nội, Việt Nam'),
(9,N'Nam Cao','https://vi.wikipedia.org/wiki/Nam_Cao#/media/T%E1%BA%ADp_tin:Namcao.jpg',N'xã Hòa Hậu, huyện Lý Nhân, Hà Nam, Việt Nam'),
(10,N'Nguyễn Du','https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Du#/media/T%E1%BA%ADp_tin:T%C6%B0%E1%BB%A3ng_%C4%91%C3%A0i_c%E1%BB%A5_Nguy%E1%BB%85n_Du.jpg','Hà Tĩnh, Việt Nam')
INSERT INTO Category(CategoryID,CategoryName)
VALUES(1,N'Tiểu thuyết'),
(2,N'Truyện'),
(3,N'Thơ'),
(4,N'Kịch'),
(5,N'Kí sự')
INSERT INTO Book(BookID,Bookname,image,AuthorID,CategoryID,review)
VALUES(1,N'Số Đỏ','https://salt.tikicdn.com/ts/product/a7/14/57/2160a52816265cd80ea8cdc7519418f2.jpg',3,1, 'Số đỏ là câu chuyện kể về Xuân, thường được mọi người gọi là Xuân tóc đỏ. Xuân là một cậu bé, một đứa trẻ lang thang đầu đường xó chợ, sống bằng nghề trèo me, trèo sấu kiếm tiền sống lay lắt qua ngày…Vì từ nhỏ mồ côi, không ai nuôi dạy, nên bản chất của Xuân bị tha hóa, hắn có những hành động vô giáo dục nên bị cớm bắt giam. Nhưng cơ may đến, Xuân được cứu thoát bới bà Phó Đoan- là một mụ me Tây vô cùng dâm đãng. Từ đó, Xuân làm phục vụ cho một cửa hàng Âu hóa của vợ chồng Văn Minh do mụ Phó Đoan giới thiệu cho, đây là một cửa hàng chuyên phục vụ phái đẹp, nơi luyện quần vợt của bà Phó Đoan và vợ Văn Minh. Xuân tóc đỏ được nhận danh hiệu “sinh viên trường thuốc” rồi danh hiệu “đốc tờ Xuân”, hắn học thuộc lòng những bài quảng cáo thuốc lậu, gia nhập với xã hội thuộc lưu, mở rộng các mối quan hệ với những nhân vật có thế lực, và được cô Tuyết em của Văn Minh con cụ cố Hồng yêu say đắm. Càng ngày hắn càng được nhiều người kính trọng và sợ hãi. Vô tình hắn gây ra cái chết của cụ cố tổ, và được gia đình nhà cụ cố vô cùng biết ơn vì điều này. Vợ chồng Văn Minh ra sức yêu chiều và tô vẽ cho Xuân, đồng thời cũng có ý định gã em gái là Tuyết cho Xuân dù biết quá khứ của hắn, nhưng vì Tuyết cũng đã mang cho mình cái danh hư hỏng nên đối với gia đình họ lại là niềm vui.'),
(2,N'Tắt Đèn','https://upload.wikimedia.org/wikipedia/vi/b/b1/T%E1%BA%AFt_%C4%91%C3%A8n-Nh%C3%A3_Nam.jpeg',4,1,'Câu chuyện trong Tắt đèn diễn ra trong một vụ đốc sưu, đốc thuế ở một làng quê - làng Đông Xá dưới thời Pháp thuộc, cổng làng bị đóng chặt. Bọn hào lí và lũ tay chân với roi song, dây thừng, tay thước, nghênh ngang đi lại ngoài đường thét trói kẻ thiếu sưu. Tiếng trống ngũ liên, tiếng tù và nổi lên suốt đêm ngày.Sau hai cái tang liên tiếp (tang mẹ chồng và tang chú Hợi), gia đình chị Dậu tuy vợ chồng đầu tắt mặt tối quanh năm mà vẫn cơm không đủ ăn, áo không đủ mặc, đến nay đã “lên đến bậc nhì, bậc nhất trong hạng cùng đinh”. Anh Dậu lại bị trận ốm kéo dài mấy tháng trời... Không có tiền nộp sưu, anh Dậu đã bị bọn cường hào bắt trói như trói chó để giết thịt. Chị Dậu tất tả ngược xuôi chạy vạy, phải đứt ruột bán đứa con gái đầu lòng và ổ chó cho vợ chồng Nghị Quế để trang trải “món nợ Nhà nước”. Lí trưởng làng Đông Xá bắt anh Dậu phải nộp suất sưu cho chú Hợi đã chết từ năm ngoái vì “chết cũng không trốn dược nợ Nhà nước”. Bị ốm, bị trói, bị đánh... anh Dậu bị ngất đi, rũ như xác chết, được khiêng trả vể nhà. Sáng sớm hôm sau, khi anh Dậu còn ốm rề rề đang nghển cổ húp cháo thì tay chân bọn hào lí lại ập đến. Chúng lồng lên chửi mắng, bịch vào ngực và tát đánh bốp vào mặt chị Dậu. Chị Dậu van lạy chúng tha trói chồng mình. Nhưng tên cai lệ đã gầm lên, rồi nhảy thốc vào trói anh Dậu khi anh Dậu đã lăn ra chết ngất. Chị Dậu nghiến hai hàm răng thách thức, rồi xông vào đánh ngã nhào tên cai lệ và tên hầu cận lí trưởng, những kẻ đã hút nhiều xái cũ.'),
(3,N'Ông lão đánh cá và con cá vàng','https://salt.tikicdn.com/ts/product/e8/86/5e/5a224b4fd5fc3204295c1e3f0e4d3993.jpg',6,2,'Một ông lão đánh cá nghèo ra biển. Lần thứ nhất kéo lưới chỉ thấy có bùn, lần thứ hai kéo lưới được cây rong, lần thứ ba thì bắt được con cá vàng. Cá vàng kêu van, hứa trả ơn và ông đã thả. Mụ vợ biết chuyện, mắng lão một trận và bắt ông ra biển năm lần, đòi cá vàng đáp ứng những yêu cầu của mụ. Lần thứ nhất mụ đòi cá giúp cho một chiếc máng lợn mới. Lần thứ hai, mụ vợ lại bắt ông lão ra biển đòi cá vàng một cái nhà rộng. Lần thứ ba, mụ vợ muốn trở thành một bà nhất phẩm phu nhân. Lần thứ tư, mụ vợ lại đòi cá cho làm nữ hoàng. Lần thứ năm, mụ muốn làm Long Vương để bắt cá vàng hầu hạ. Cá vàng tức giận, lấy lại tất cả những thứ đã cho. Ông lão trở về lại thấy túp lều nát ngày xưa, và trên bậc cửa, mụ vợ đang ngồi trước cái máng lợn sứt mẻ.'),
(4,'romeo and juliet','https://vcdn.tikicdn.com/ts/review/52/f3/28/c33ef9097ce4e8366679fc786afef095.jpg',5,4,'Ngày xưa, tại một thành phố nóng nực của nước Ý tên là Verona, người dân đã đối xử tồi tệ với nhau và họ còn khuyên nhắc vợ con, bạn bè phải thù ghét lẫn nhau, và các mối thù được truyền đi từ thế hệ này qua thế hệ khác. Cũng tại thành phố Verona có hai gia đình Montague và Capulet căm thù nhau : các người già cãi nhau om sòm ngoài đường phố, làm mất nhân cách còn các người trẻ đánh nhau nơi công cộng khiến cho có kẻ mất mạng. Sự ngu xuẩn của hai gia đình này làm cho Hoàng Tử của thành phố tức giận, ông ta đã ra một đạo luật ngăn cấm việc gây lộn ngoài đường phố và kẻ phạm pháp sẽ bị xử tử hình. Hai gia đình Montague và Capulet đành phải phục tùng luật lệ nhưng thực ra, mối thù vẫn còn bên trong lòng của họ.Khi thấy con trai Roméo không dính dáng vào các vụ tranh chấp, Hầu Tước và bà Montague rất vui mừng nhưng họ không hiểu tại sao con trai quý của họ không được vui tươi. Họ hỏi thăm Benvolio, người trong họ và cũng là bạn của Roméo thì sau đó, Benvolio mới khám phá ra rằng Roméo đang yêu. Và người yêu của Roméo là Rosaline, một cô gái rực rỡ, lại chẳng đáp lại mối tình này. Để làm cho Roméo vui lên, Benvolio đề nghị cả hai người nên cải trang, bí mật tham dự buổi dạ hội của gia đình Capulet. Rosaline cũng sẽ tới đó và Benvolio hứa rằng sẽ tìm cho Roméo một cô gái đẹp, xuất sắc hơn Rosaline. Nghe đề nghị này, Roméo linh cảm thấy một sự nguy hiểm nhưng rồi cũng đồng ý ra đi, cùng với Benvolio và Mercutio, một người bạn khôn khéo.'),
(5,N'Hạ Đỏ','https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1587797857l/12456458._SY475_.jpg',2,2,'Mùa hè là khoảng thời gian mà học trò không còn lo lắng chuyện học hành và cũng là mùa để họ vui chơi giải trí. Mùa hè này, anh chàng Chương còm sẽ về quê ngoại để đổi gió và nghỉ ngơi sau chín tháng dài học hành căng thẳng với đầy nỗi âu lo. Nơi quê ngoại Chương sẽ làm gì và học hỏi được những gì? Xin mời các bạn cùng đón đọc Hạ Ðỏ để biết được toàn bộ nội dung câu chuyện này.'),
(6,N'Chiếc lá cuối cùng','http://img.hpu.edu.vn/upload/2015/06/02/20150602145931-cfd7d08a.png',7,2,'Xiu và Giôn –xi là hai họa sĩ nghèo sống với nhau hòa thuận. Giôn-xi mắc bệnh viêm phổi, cô không chịu chữa trị, tuyệt vọng không muốn sống tiếp. Hằng ngày cô ngắm những chiếc lá thường xuân và đợi chiếc lá cuối cùng rơi là cô cũng lìa đời. Biết được ý định đó, cụ Bơ- men đã lặng lẽ vẽ chiếc lá thường xuân cuối cùng vào đêm mưa gió. Giôn-xi nhìn chiếc lá cuối cùng không rụng nên quyết tâm vực lại mình, cuối cùng cô khỏi bệnh. Còn cụ Bơ-men thì chết vì sưng phổi khi sáng tạo kiệt tác chiếc lá cuối cùng cứu sống Giôn-xi.'),
(7,N'Truyện Kiều','https://www.nxbtre.com.vn/Images/Book/NXBTreStoryFull_03462015_104616.jpg',10,2,'Thúy Kiều là một thiếu nữ tài sắc vẹn toàn, sống êm ấm cùng cha mẹ và 2 em là Thúy Vân và Vương Quan. Trong buổi du xuân, Kiều gặp Kim Trọng, thề nguyền đính ước với nhau. Kim Trọng về quê chịu tang chú, gia đình Kiều bị mắc oan, Kiều phải bán mình chuộc cha. Kiều bị Mã Giám Sinh, Tú Bà, Sở Khanh lừa đẩy vào lầu xanh, được Thúc Sinh cúư khỏi lầu xanh nhưng bị Hoạn Thư ghen, Kiều phải trốn đi nương náu ở chùa Giác Duyên. Vô tình Kiều lại rơi vào tay Bạc Hạnh, Bạc Bà phải vào lầu xanh lần thứ 2. Kiều gặp Từ Hải. Từ Hải lấy Kiều làm vợ, giúp Kiều báo ân báo oán. Từ Hải mắc lừa Hồ Tôn Hiến, bị giết. Kiều bị bắt ép gả cho tên thổ quan. Nàng tủi nhục trầm mình ở sông Tiền Đường, Được sư Giác Duyên cứu, nương nhờ cửa Phật lần thứ 2. Kim Trọng trở lại, kết duyên với Thúy Vân nhưng vẫn đi tìm Kiều. Nhờ sư Giác Duyên, Kim-Kiều gặp nhau, gia đình đoàn tụ. Kim gặp Kiều đổi tình yêu thành tình bạn.'),
(8,N'Mắt biếc','https://thuvientinhlaocai.vn/uploads/news/2020_08/gioi-thieu-sach/mat-biec.jpg',2,1,'Ngạn một cậu bé sống tại làng Đo Đo, tuổi thơ lớn lên với những trò chơi cùng đám bạn trong làng. Cuộc sống của cậu trôi qua êm đềm trong tình thương của bà, cha mẹ và cô Thịnh – người luôn an ủi Ngạn mỗi lần bị cha phạt đánh đòn vì tội ham chơi hoặc lười không chịu học chữ.
Nhưng đến khi bắt đầu bước chân vào tiểu học, Ngạn đã gặp người bạn gái đầu tiên của mình, và cũng là định mệnh sau này của cậu, đó là Hà Lan. Hà Lan là một cô bé duyên dáng , dễ thương đặc biệt là đôi mắt đẹp với hàng lông mi dài , lúc nào cũng mở to, hồn nhiên ngơ ngác.'),
(9,N'Dế mèn phiêu lưu kí','https://vnwriter.net/wp-content/uploads/2017/12/d%C3%AAmnphieuluuky-375x405.jpg',8,2,'Học tác phẩm “Dế Mèn phiêu lưu kí của nhà văn Tô Hoài, em thích nhất là chương I. Đó là chương kể về bài học đường đời đầu tiên của Dế Mèn.
Theo phong tục của họ hàng nhà Dế thì Dế Mèn phải ra ở riêng bắt đầu cuộc sống tự lập. Điều này khiến Dế Mèn phấn khởi vô cùng. Hàng ngày Dế Mèn dậy thật sớm cặm cụi đào hang thật sâu có đầy đủ ngách thượng, đường tắt, cửa sau phòng khi có kẻ đến bắt nạt thì có đường thoát thân. Đào đất xong Dế Mèn còn làm một cái giường vững chãi và đẹp. Hoàng hôn xuông, Mèn cùng bà con hàng xóm tụ tập ở bãi cỏ ca hát chào tạm biệt ông mặt trời. Khi trăng lên, tất cả cùng nhau nhảy múa tưng bừng. Chẳng bao lâu Dế Mèn đã hòa nhập vào cuộc song thường ngày của họ hàng nhà Dế.
Nhờ ăn uống có điều độ và làm việc có chững mực nên chẳng bao lâu Dế Mèn trở thành một chàng thanh niên cường tráng và bảnh trai lắm và cũng từ đó tính tình của Mèn cũng thay đổi hẳn. Hắn kiêu căng, hống hách hung hăng, dám cà khịa với bà con lối xóm, rồi quát mắng chị Bò Cào, đá ghẹo anh Gọng Vó… Vì nể mặt nên bà con xóm giềng không ai nói đến. Nhưng, Dế Mèn lầm tưởng mọi người sợ mình nên ngày càng kiêu ngạo và tự cho mình là đứng đầu thiên hạ. Chính cái tính kiêu ngạo ngang bướng ấy mà Dế Mèn phải trả một giá rất đắt và cũng là bài học đường đời đầu tiên của hắn.'),
(10,N'Chí phèo','https://quang.name.vn/wp-content/uploads/2019/04/chi-pheo.png',9,2,'Sinh ra không biết cha mẹ hắn là ai, những người trong làng nuôi Chí Phèo khôn lớn, lần lượt hắn đã ở trong những gia đình khác nhau cho đến khi trạc tuổi 20 hắn làm canh điền của Bá Kiến. Mụ vợ Bá Kiến thích Chí Phèo vì vậy thường xuyên dụ dỗ, thấy vợ đối tốt với Chí Phèo, Bá Kiến ghen tuông và đẩy Chí Phèo vào tù.Cũng từ đây tính cách, cuộc đời Chí Phèo có nhiều chuyển biến, từ một con người hiền lành, tốt tính hắn trở thành một kẻ thô lỗ,cộc cằn. Ra tù Chí Phèo thành tay sai chuyên đi đòi nợ thuê cho Bá Kiến, cuộc đời của hắn chỉ biết có rượu và những lần chửi bới. Chí Phèo gặp gỡ Thị Nở người phụ nữ xấu xí, nhưng hắn lại cảm mến khi được Thị Nở chăm sóc khi hắn bị ốm thông qua hình ảnh bát cháo hành hắn cảm mến được hương vị của cuộc sống, phần người trong hắn trỗi dậy, hắn thêm một gia đình và mong muốn trở về với con người lương thiện trước kia nhưng bị Thị Nở từ chối, gạt phăng đi mong muốn quay về con đường lương thiện của hắn. Chí Phèo chìm trong rượu, sẵn hơi men Chí Phèo tìm đến Bá Kiến và giết hắn. Sẵn con dao Chí Phèo tự kết thúc cuộc đời bi kịch.')

SELECT B.BookID, B.Bookname, B.image, A.AuthorName, C.CategoryName
FROM Book B INNER JOIN Author A ON B.AuthorID = A.AuthorID
INNER JOIN Category C ON B.CategoryID = C.CategoryID