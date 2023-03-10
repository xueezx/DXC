-- 设置客户端连接服务器端编码
set names utf8;
-- 丢弃数据库如果存在
drop database if exists dxc;
-- 创建新的数据库
create database dxc charset=utf8;
-- 进入数据库
use dxc;
---------------------------------------------------------
-- 新闻-分类-数据表
create table dxc_xwfl(
  id int primary key auto_increment,
  title varchar(32) unique
);
-- 插入数据
insert into dxc_xwfl values
(1,'集团新闻'),
(2,'地方动态'),
(3,'媒体报道');


--新闻-新闻数据-数据表
create table dxc_xwsj( 
  id int primary key auto_increment,
  title varchar(124),
	ctime varchar(12),
  pic varchar(124),
  content varchar(1024),
	detail varchar(10240),
  xwfl_id int,
	-- 将xwfl_id列作为外键，它的值必须在dxc_xwfl表的id中出现过
	foreign key(xwfl_id) references dxc_xwfl(id)
);
--插入数据
insert into dxc_xwsj values
(null,'2022中国品牌价值评价信息发布 稻香村（苏州）品牌价值182.77亿元','2022-09-06','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/28/2_cut600380.jpg','9月5日，新华社、中国品牌建设促进会、中国资产评估协会在京共同主办“2022中国品牌价值评价信息发布”线上活动，会上正式发布了2022年中国品牌价值评价结果。稻香村集团（苏州）不负众望，最终以904的高品牌强度和182.77亿元的品牌价值强势上榜。','[{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/9220544997fd2b6-4.jpg","pic_title":"2022稻香村集团品牌强度为904、品牌价值为182.77亿元","new_content":"9月5日，新华社、中国品牌建设促进会、中国资产评估协会在京共同主办“2022中国品牌价值评价信息发布”线上活动，会上正式发布了2022年中国品牌价值评价结果。稻香村集团（苏州）不负众望，最终以904的高品牌强度和182.77亿元的品牌价值强势上榜。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/922468430756f9cf-b.png","pic_title":"苏州稻香村观前街老店","new_content":"作为中式糕点行业最大龙头企业，稻香村集团的前身是苏州稻香村，自1773年（乾隆三十八年）创始于苏州，是“稻香村”品牌的创立者、“稻香村”糕点类商标的持有者，也是商务部首批认定的中华老字号。2013年糕点类“稻香村”商标被认定为“中国驰名商标”。创始至今249年，苏州稻香村在产品制作技艺上坚持“工匠精神”，传统手工技艺都是通过“师傅带徒弟”的方式代代相传，并拥有明确清晰的六代技艺传承谱系。2009年“稻香村苏式月饼制作技艺”被列入江苏省级非物质文化遗产保护名录，是中华民族美食文化瑰宝。历经两个多世纪的持续发展，一代代稻香村人的传承与创新，苏州稻香村已成为闻名中外的大型现代化食品企业集团。目前，稻香村集团在苏州、北京、菏泽、沈阳、成都等地建有十个现代化加工中心，在苏州、北京、山东建有3个研发中心，占地1500亩，6000多名员工，2022年品牌价值高达182.77亿元，位居中华老字号榜单前列，增速领跑一众老字号企业。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/9232251621a0f58b-8.jpg","pic_title":"辛选团队818售卖稻香村产品战报","new_content":"目前稻香村集团在全国有800多家专卖专营店，覆盖全国大部分区域。除了线下渠道，稻香村集团与时俱进积极布局互联网，是老字号较早一批“触网”的企业，2009年就确立并开始实施了“互联网+稻香村”战略，成立了电子商务部，到目前已经连续多年在天猫、京东等主流电商平台糕点类目、月饼类目销量名列前茅。2022年月饼季，稻香村“上品荣礼”月饼礼盒登上辛选直播间，单品销售额达到4300万+，销售量突破15万+，再度刷新战绩，也让“上品荣礼”月饼礼盒成为今年中秋爆款。稻香村集团还与东方甄选团队合作直播带货，当晚稻香村糕点礼盒销售量达到9800盒，销售额突破84万。据悉，稻香村集团电商渠道的销售占比逐年提高，目前已近30%。守正创新是老字号“不老”秘方，稻香村集团是中华老字号传承与创新发展的标杆企业，始终坚持创新研发。目前稻香村集团拥有百余条国内外现代化生产线，并先后通过QS、HACCP、ISO9001等多项认证。现代化的生产设备及工艺与科学管理体系，使得稻香村悠久文化与现代加工技术融为一体。除此之外，稻香村集团联合成立多个产学研合作平台，紧跟国际最新食品科技进行自主创新，打造并提升“稻香村”精品品牌形象，引领行业技术跨越式发展，近年连续获得“中国轻工业二百强企业”“中国轻工业食品行业五十强企业”等荣誉称号。作为民族品牌，稻香村集团大力践行品牌建设，多次参加江苏、浙江、山东、上海等地老字号博览会，并在中国企业家博鳌论坛、“一带一路”合作高峰论坛等高端论坛上宣传稻香村品牌形象，被人民日报、新华社、央视等主流媒体多次报道，逐步扩大品牌影响力。在春节期间，稻香村品牌形象广告亮相美国纽约时代广场，以开放、包容的姿态走向世界舞台。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/92443789f95a0ebb-7.jpg","pic_title":"稻香村月饼在加拿大超市热卖","new_content":"此外，稻香村集团积极响应国家“一带一路”和“中国企业走出去”的倡议，2013年开始实施“稻香村出海”战略，2006年起至今已向海外60多个国家和地区注册“稻香村”的商标。截止目前，稻香村集团通过跨境门店等渠道将产品出口到海外40多个国家和地区，今年首次出口至新加坡和韩国，在中国自有品牌糕点出口中销量排名第一，出口额年均增长50%以上，产品深受国内外消费者喜爱，成为闻名中外的中国味道金名片。2022年中秋，稻香村集团仅月饼就出口30多个货柜，700多万块，比2021年月饼出口量增长了60%。在赋能企业高质量发展的同时，稻香村集团坚守社会责任，参与河南暴雨灾害捐赠、援助抗击新冠肺炎疫情、捐助邢台水灾灾区、纪念长征80周年、纪念建军90周年、春蕾午餐计划、捐助山东地区贫困教师、向困难群众捐赠月饼等公益活动，近几年累计捐赠善款及物资价值3000多万元，先后荣获“中国优秀责任品牌企业”、“中国优秀企业公民”、“省级扶贫龙头企业”等称号，充分凸显了民族企业的情怀和担当。源自苏州、立足全国、香飘世界，稻香村秉承“厚道做人，地道做事，成人达己，追求卓越”的品牌精神和服务理念，用匠心匠艺作为立本立命的根基，用用糕点美食作为国际文化传播纽带，以实际行动提升品牌价值，为推动中华民族优势品牌走向全球加油助力！"}]',1),
(null,'稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。','2023-02-06','http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/6/17237326c438096-a_Cut285180.jpg','近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入选2022年中国新国货品牌...','[{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2023/2/6/172033688c4e62c92-d.jpg","pic_title":"稻香村荣登新国货品牌百强","new_content":"近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入选2022年中国新国货品牌百强。连获两份荣誉，是对稻香村价值和创新实力的最佳体现，同时也证明了行业的高度认可。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2023/2/6/172033688c4e62c92-d.jpg","pic_title":"稻香村荣登新国货品牌百强","new_content":"稻香村于1773年创立于苏州，是“稻香村”品牌创始者、“稻香村”糕点类商标的持有者，也是商务部首批认定的中华老字号，现已发展成为驰名中外的全国性大型现代化企业集团。目前，稻香村集团在全国建有十个现代化加工中心、三个研发中心，品牌价值达182.77亿元。稻香村传统糕点制作技艺已持续传承至第六代，2009年“稻香村苏式月饼制作技艺”被列入江苏省级非物质文化遗产保护名录，是中华民族美食文化瑰宝和守护者。未来，稻香村也将持续深耕食品领域，打造品牌核心竞争力，传递稻香村品牌价值，为弘扬中华传统饮食文化、书写老字号的新篇章添砖加瓦，为推动行业发展贡献生生不息之力！"}]','1'),
(null,'稻香村（苏州）携手梦幻西游 推出中秋月饼联名礼盒','2022-09-06','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/28/1118457091350d3c9-7_Cut285180.jpg','恰逢三秋之半,最是月圆之时,时间流转,又是一年中秋到。稻香村（苏州）携手梦幻西游，联合推出“苏州稻香村x梦幻西游”月饼礼盒，让消费者在喜迎中秋佳节之际，共鉴传统中式美食与国风游戏的融合魅力。','[{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/91548832d99413d6-1.jpg","pic_title":"稻香村x梦幻西游联名月饼礼盒","new_content":"恰逢三秋之半,最是月圆之时,时间流转,又是一年中秋到。稻香村（苏州）携手梦幻西游，联合推出“苏州稻香村x梦幻西游”月饼礼盒，让消费者在喜迎中秋佳节之际，共鉴传统中式美食与国风游戏的融合魅力。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/91740522d7c4fa55-3.jpg","pic_title":"稻香村“稻香金牌”月饼礼盒位列“天猫好评榜单”第一","new_content":"稻香村品牌创始于1773年的苏州，已持续传承249年。苏州稻香村以“苏式糕点”立足，融汇各邦式特色，成为中式糕点的代表品牌，是商务部认定的中华老字号企业，“稻香村苏式月饼制作技艺”被列入江苏省级非物质文化遗产。今年月饼季，苏州稻香村除了线下专卖店、各大商超专柜，电商平台也都卖得火热，据8月售卖数据显示，在天猫平台的“天猫好评榜单”中，苏州稻香村的“稻香金牌”月饼礼盒位列第一，销量达到50万+，消费者口碑和网络热度居高不下。《梦幻西游》作为国民经典网游之一，粉丝众多，传承国风文化、发扬自身IP美学等品牌实践展现了品牌的年轻态势与丰富内涵，这与苏州稻香村匠心传承、坚持创新焕“新颜”的追求有相似之处。此次跨界合作，双方精心打造联名月饼礼盒，将灵动的游戏元素赋予苏州稻香村匠心美食之中，期待玩家前来品鉴。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/6/918377705b616d64-1.jpg","pic_title":"稻香村x梦幻西游联名月饼礼盒内配5味9饼","new_content":"礼盒中配有5味9饼，包括蛋黄莲蓉桃山月饼、流心奶黄桃山月饼、豆沙桃山月饼、低糖桂花酒酿流心桃山月饼、低糖南瓜桃山月饼五种口味，既有豆沙等传统经典之作，也有流心奶黄、低糖桂花酒酿流心等新潮口味。其中蛋黄莲蓉桃山月饼是苏州稻香村特别为《梦幻西游》定做的，融入其标志性元素，为消费者送上传统与梦幻的双重体验。每一次苏州稻香村的跨界合作都会带来满满惊喜，这款“苏州稻香村x梦幻西游”中秋联名礼盒当然也不例外，别出心裁地以梦幻西游中的经典元素作为原型，巧妙运用呼啸灵动的青龙等图案，纳古意传今礼，极具东方韵味之美。而且礼盒整体采用实用的铁盒设计，品尝完月饼之后还能用包装盒做收纳整理，积极响应环保理念，既美观又实用。</p><p>除了跨界联名，苏州稻香村并不局限于“百年老字号”的金字招牌，而是积极探索更多年轻化营销打法，通过产品创新、电商直播、新媒体营销等方法，满足大众新型消费需求的同时强化自身竞争力，现在已经发展成为一家大型现代化企业集团，在全国拥有10个现代化加工中心、800多家专卖专营店，产品远销40多个国家和地区，成为驰名中外的食品品牌、中国味道的名片。"}]','1'),
(null,'老字号时尚创意大赛完美收官 苏州稻香村斩获多项大奖','2022-08-23','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/8/23/1119116555ec51e36-f_Cut285180.jpg','近日，由中国商业联合会中华老字号工作委员会支持、北京市西城区商务局主办的“2021年老字号时尚创意大赛”活动在京完美收官。苏州稻香村宝玉饼荣获产品、包装类二等奖，清水玫瑰饼、蟹黄叶子酥分获产品类三等奖，苏州园林饼、“团圆祥月”外盒、“合家团圆”月饼礼盒分获包...','','1'),
(null,'稻香村集团荣获中国轻工业二百强、中国轻工业食品行业五十强企业两项大奖','2022-08-23','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/8/23/94859870ca2ed311-7_Cut285180.jpg','8月10日，由中国轻工业联合会主办的轻工业百强企业高峰论坛在京举办。稻香村集团（苏州）荣获2021年度“中国轻工业二百强企业”及“中国轻工业食品行业五十强企业”两大重磅奖项，分别位列第106位、第29位，企业综合实力、科技创新能力、市场竞争力受到行业各方的肯定与认可...','','1'),
(null,'苏州稻香村月饼喜获“金牌月饼”“中国名饼”荣誉称号','2022-08-23','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/8/23/92753601627a3242-a_Cut285180.jpg','近日，2022（第二十八届）“中国月饼文化节”在北京开幕。苏州稻香村集团出品的“稻香村月饼”荣获“金牌月饼”“中国名饼”荣誉称号，蛋酥月饼荣获“中国特色月饼”荣誉称号。','','1'),
(null,'再次漂洋过海来见你！苏州稻香村除夕夜亮相纽约时代广场','2022-05-20','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/5/20/102039254cf34a5a0-f_Cut285180.jpg','今年除夕夜，苏州稻香村品牌大片再次登上纽约时代广场大屏幕，与海外的小伙伴们一起迎接虎年的到来！','','1'),
(null,'周广军：统一大市场 加速稻香村高质量发展','2022-05-18','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/5/18/14315192f3a34f5b-a_Cut285180.jpg','5月7日，《中国品牌》杂志、中国品牌网主办的第五届中国品牌发展论坛在北京举办。中国贸促会研究院副院长刘英奎、阿里巴巴集团副总裁项煌妹、稻香村食品集团总裁周广军围绕“发挥品牌引领作用 建设全国统一大市场”话题进行了对话交流。','','1'),

(null,'苏州稻香村月饼广告惊艳亮相苏州、川渝等多地地铁','2022-09-28','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/28/1153243275d6fedb2-a_Cut285180.jpg','近日，稻香村（苏州）广告陆续在全国各地上线，品牌形象广告登上苏州、成都、重庆、郑州等地地铁站，以及苏州、哈尔滨核心商圈公交车站，抢占品牌传播高地，掀起新一轮品牌传播飓风，将美食美味送至千家万户。','[{"new_pic":"","pic_title":"","new_content":"近日，稻香村（苏州）广告陆续在全国各地上线，品牌形象广告登上苏州、成都、重庆、郑州等地地铁站，以及苏州、哈尔滨核心商圈公交车站，抢占品牌传播高地，掀起新一轮品牌传播飓风，将美食美味送至千家万户。品牌广告频频引关注的苏州稻香村，始创于1773年，是“稻香村”品牌的创立者、“稻香村”糕点类商标的持有者，也是商务部首批认定的中华老字号企业、江苏省非遗保护单位，现在已经发展成为大型现代化企业集团和行业龙头企业。目前，稻香村集团在全国拥有10个现代化的生产中心，7个原料供应基地，3个研发中心，800多家线下专卖店，产品出口到40多个国家和地区。2021年，稻香村集团品牌价值达到167.29亿元，品牌影响力及品牌口碑持续上扬。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/28/115414036e513f1f-6.jpg","pic_title":"稻香村广告在成都地铁3号线衣冠庙站","new_content":"稻香村全新广告上线适逢中秋，广告片、海报结合时令元素，聚焦月饼卖点，选取红色、金色、墨绿色为主色调，风格既有鲜明亮丽，也有复古雅韵，配上“百年好礼 稻香村”、“百年匠心 稻香村月饼”、“中秋情 稻香礼”等耳目一新的创意及简单明了的内容，加强了“稻香村”在广大消费者中的品牌印象，有助于触达人群更加深入地了解品牌价值。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/28/11558914bbc50206-0.jpg","pic_title":"稻香村广告在郑州地铁1号线","new_content":"本次广告投放充分利用地铁、公交、社区媒体覆盖度广、渗透度高、场景营销效应强等特点，直击目标消费人群，持续有效地曝光。多地区联合激发品牌传播最强力，苏州投放地铁、公交、动视、社区等多种媒体形式。成都覆盖春熙路、火车南站、火车东站等城市地标性站点，包括1/2/3/4/5/6/7/8/9/10/18号线。 重庆覆盖观音桥、两路口、小什字等重要换乘点，包括1/2/3/6/9/环线等线路。除此之外，郑州、哈尔滨等地也有稻香村品牌广告的身影，成为城市里流动的靓丽风景线。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2022/9/28/115651424da559d7d-0.jpg","pic_title":"稻香村集团品牌形象大片登上纽约时代广场","new_content":"除了在国内绽放美丽，稻香村品牌也在海外闪耀着，2020、2021年连续两年除夕，稻香村品牌形象大片登上纽约时代广场，与全球华人共迎新春，送上家乡的思念与甜蜜，也让外国友人感受到中式糕点与中华传统文化的魅力。从苏州走向全国、走向世界舞台，成为驰名中外的老字号糕点品牌，稻香村集团深知打造民族品牌、做强品牌建设的重要性。近些年，稻香村集团组织专业人员查询史料典籍，寻找老物件、旧资料，组织专家研讨会，梳理稻香村发展的历史脉络，拍摄纪录片、出版图书。同时与中国人民大学、苏州大学等知名院校互动交流，多次组织参加江苏、浙江、山东、上海等地老字号博览会以及全国糖酒商品交易会等行业展会，并在中国企业家博鳌论坛、“一带一路”合作高峰论坛等高端论坛上宣传稻香村品牌形象，人民日报、新华社、中央广播电视总台等主流媒体多次报道稻香村，品牌影响力持续增长。与此同时，稻香村集团积极搭建新媒体传播矩阵、加码布局电商业务，不仅在天猫、京东、拼多多等主流电商平台建有官方店铺，与头部主播合作直播带货，而且自建直播团队、开发微信小程序商超、尝试社群营销，打出了一套线上营销组合拳。近日，苏州稻香村“上品荣礼”礼盒登上辛选直播间，创下单品销售额超4300万，销售量突破15万的好成绩。据艾媒咨询发布的《2021中国月饼行业新消费趋势研究报告》显示，2021年消费者在月饼品牌选择上，稻香村（苏州）以49.5%的占比位居第一，品牌认可度很高。有专家评价，苏州稻香村对“稻香村”品牌的创立、传承、发展到全国及海外，为中国传统美食文化、节日文化、非遗文化的传播作出了巨大贡献。作为中华老字号的先行者、国内传统糕点食品领军企业，苏州稻香村不仅在“稻香村”品牌的创立、传承和发展过程中贡献卓越，更在全新的消费需求与趋势下，推动“稻香村”品牌向更远大的目标加速。"}]','2'),
(null,'苏州稻香村体验店开到太仓 延续“国潮”风格再掀热潮','2021-10-26','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/12/2/1447242363f0d6a4-d_Cut285180.jpg','苏州稻香村把国潮体验店开到苏州太仓，期待掀起新一波热潮。','','2'),
(null,'苏州市非遗办走进苏州稻香村 老字号展现新风貌','2021-06-29','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/6/29/932121231d15fa2f-2_Cut285180.jpg','6月26日，苏州市非遗办举办第七季“触动”——市民走进非物质文化遗产公益体验活动，苏州稻香村是此次非遗体验活动的重要一站。','','2'),
(null,'苏州稻香村向一线医护人员致敬 举办非遗体验活动','2021-05-19','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/5/19/1627259483dd8a23a-3_Cut285180.jpg','5月15日，在苏州稻香村体验店举办了一场特别的非遗体验活动。本次活动由苏州市非遗办与苏州新华书店合作举办，来自抗疫一线的苏州市第五人民医院的医护人员参加。','','2'),
(null,'稻香村集团广告亮相苏州地铁','2021-05-19','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/5/19/162534470a254b0ed-c_Cut285180.jpg','稻香村集团形象广告登上苏州地铁1、2、3、4号线。','','2'),
(null,'2020“我们在一起”集体婚礼举办 稻香村集团参与','2021-01-12','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/1/12/179144042343e31-0_Cut285180.jpg','12月28日，由北京市民政局、北京市妇联、北京婚姻家庭建设协会、北京电视台、稻香村集团等单位联合举办的“我们在一起”——2020北京市抗击疫情最美新人大型公益集体婚礼通过云端的形式举行。稻香村集团北京基地作为活动分会场，见证了20对新人的新婚时刻。','','2'),
(null,'山东稻香村荣列农业产业化国家重点龙头企业','2021-01-12','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/1/12/165619533adf6af1c-8_Cut285180.jpg','12月15日，农业农村部等八部委联合印发通知，递补128家企业为农业产业化国家重点龙头企业，其中山东稻香村食品工业有限公司在列。','','2'),
(null,'数字经济与知识产权保护论坛在稻香村集团北京基地举办','2020-12-22','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/12/22/1742125064edd7371-e_Cut285180.jpg','12月19日，由北京知识产权研究会主办、稻香村集团协办的数字经济与知识产权保护论坛在北京顺利召开，100多名知识产权领域的律师、专家、学者参加论坛，共同探讨数字经济时代知识产权保护问题。','','2'),

(null,'苏州稻香村再度登陆纽约时代广场，中国味道出海彰显文化魅力','2023-02-10','http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/10/916116509589fe6-9_Cut285180.jpg','1月22日，除夕夜当晚稻香村集团携兔年贺岁视频登陆美国纽约时代广场，在农历大年初一到来之际向全球华人送上新春祝福。据悉，本次已是稻香村集团连续第三年亮相纽约时代广场，持续以中华老字号的全新形象彰显着中国文化的独有魅力。','[{"new_pic":"","pic_title":"","new_content":"1月22日，除夕夜当晚稻香村集团携兔年贺岁视频登陆美国纽约时代广场，在农历大年初一到来之际向全球华人送上新春祝福。据悉，本次已是稻香村集团连续第三年亮相纽约时代广场，持续以中华老字号的全新形象彰显着中国文化的独有魅力。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2023/2/10/916116509589fe6-9.jpg","pic_title":"2023年春节稻香村集团亮相纽约时代广场","new_content":"再次赴约，中国味道与世界共迎新春,此前两年，稻香村集团也曾在除夕夜携品牌大片亮相纽约时代广场，引来海内外媒体广泛关注。今年春节，稻香村集团第三次登上大屏，打出“向全球华人拜年”“Happy New Year”的祝福，与海外游子一起迎接兔年的到来，并将来自中国的新春祝福送给更多喜爱中国饮食、中国文化的人们。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2023/2/10/9174252935414af0-1.jpg","pic_title":"2023年春节稻香村集团亮相纽约时代广场","new_content":"今年春节期间，来自稻香村集团的年货产品出口至美国、加拿大及欧洲、澳洲等地区。海外消费者不仅可以在当地大型商超选购，也可以在亚米网、Weee、Freshgogo等电商平台享受线上置办年货的便捷。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2023/2/10/9241931b397cf15-5.jpg","pic_title":"稻香村集团年货海外热销","new_content":"喜爱稻香村集团产品的不止华人，此前稻香村集团根据海外饮食需求对自家热门产品“玫瑰鲜花饼”进行改良，受到澳大利亚等地区消费者的喜爱，进入COLES等知名西方超市后甚至出现一经上架便被抢购一空的现象。产品热销的背后，是稻香村集团因地适宜的出海策略。稻香村集团自2006年起在海外积极进行市场调研，2013年正式成立海外事业部，开始实施“出海战略”。在尊重各国居民文化背景和生活习惯的前提下，将中式糕点的传统工艺融合当地饮食特点，凭借本土化创新融入海外市场。积极出海，创新传承拓展市场版图,“稻香村”品牌从1773年在苏州创立至今，凭借创新和传承实现可持续发展。作为商务部首批认证的中华老字号，以厚重的底蕴承载中国传统文化。作为驰名中外的大型现代化集团企业，稻香村集团更不断探索海外市场。目前，稻香村集团在国内拥有10个现代化加工中心、7大原料供应基地、3大技术研发中心、800多家专卖专营店，产品已经出口至以美国、加拿大、德国、意大利、澳大利亚等欧美发达国家为主的40多个国家及地区，2022年产品首次进入新加坡和韩国市场。据统计，稻香村集团出口额年均增长达到50%以上。"},{"new_pic":"http://images.china.cn/site1000/2023-01/30/85079388_d09bd649-e998-4f6d-8650-cb6be55b4ff1.png","pic_title":"海外消费者购买稻香村集团产品","new_content":"今年春节前夕，稻香村集团携众多产品亮相第五届中国新潮食品展销会，吸引来大量当地华人以及外国友人驻足品尝，络绎不绝的展台成为稻香村集团海外成绩最生动的注脚。正如稻香村集团总裁周广军所说，“品牌和产品的背后是千变万化的中国美食和博大精深的中国传统文化，我相信，只要我们不断的‘走进去’，不断的‘融入’，就会有越来越多的国外消费者通过我们的努力逐渐了解中国、了解中国文化。”以自身跨越百年的品牌历史作为独有优势，稻香村集团立足中国传统文化，由250年前的苏州走向全国、奔向世界，为民族品牌的复兴付出应有的努力。"}]','3'),
(null,'苏州稻香村携伊利“团圆出圈” 限定款汤圆成节日仪式感担当','2023-02-10','http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/10/8481160c61e1c51-c_Cut285180.jpg','刚刚过去的元宵节，以苏州稻香村为代表的老字号纷纷玩出新花样，掀起消费热潮。节日期间，苏州稻香村玩转跨界，和伊利联合定制两款元宵节限定汤圆并开启线下快闪活动，引发年轻人群的关注。好运将“芝”金典牛奶芝士凤梨汤圆、“桃”运连连安慕希黄桃酸奶汤圆凭借新潮的馅料...','','3'),
(null,'“苏州稻香村号”亚轨道飞船首发 专家学者共话传统糕点航天应用','2022-08-23','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/8/23/9439222c8394e7c-1_Cut285180.jpg','近日，航天糕点食品研讨会暨“苏州稻香村号”亚轨道飞船发布仪式在稻香村集团举办，会上发布了“苏州稻香村号”亚轨道飞船的外涂装设计图，并宣布将研发推出多款 “苏州稻香村X中国航天”联名月饼。','','3'),
(null,'稻香村集团将首次进入新加坡与韩国市场 让中国传统文化传向世界','2022-08-11','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/8/11/151427354ba29a05-c_Cut285180.jpg','中秋节临近，稻香村集团出品的月饼已经全面上市。除了线下专卖店、各大商超专柜，天猫“稻香村食品旗舰店”、京东“稻香村自营官方旗舰店”等电商平台也开启售卖，让人感受到浓浓的节庆氛围。','','3'),
(null,'《苏州稻香村史稿》新书首发 致力中华老字号保护与传承','2022-07-05','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/7/5/14593985206bbd2d-8_Cut285180.jpg','7月3日上午，在第十二届江苏书展书香苏州馆现场，一部耗时五年、增删数次的老字号企业“史记”——《苏州稻香村史稿》新书首发，引发对中华老字号保护与传承的思考。','','3'),
(null,'A Date with China 苏州稻香村百年老店迎来“洋弟子”','2021-10-26','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/12/2/1440524041a91a413-f_Cut285180.jpg','10月25日，“2021年中国有约A Date with China”采访团走进苏州稻香村观前街体验店，打卡姑苏经典美食，探访百年老字号的国潮转变。','','3'),
(null,'2021国潮新消费大会召开 稻香村集团荣登最潮老字号榜','2021-10-20','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/12/2/1422568512569d497-b_Cut285180.jpg','10月19日，由观潮新消费主办，浙江省老字号企业协会、北京老字号协会等联合主办的2021国潮新消费大会召开，稻香村（苏州）集团荣登最潮老字号榜。','','3'),
(null,'苏州稻香村集团200多万元食品运抵河南灾区','2021-07-23','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/7/27/1661822598549fce-e_Cut285180.jpg','7月22日下午，苏州稻香村集团200多万元食品运抵河南灾区，50万包各类糕点、蛋糕、面包产品全部交付给当地慈善总会，由慈善总会统一协调分配给受灾民众。','','3');



----------------------------------------------------------
--品牌-历史-数据表
create table dxc_ls(
  id int primary key auto_increment,
	title varchar(64),
  pic varchar(124),
	ctime char(4)
);
--插入数据
insert into dxc_ls values
(null,'2022中国品牌价值评价信息发布，稻香村集团品牌价值182.77亿元。','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/29/95025642e1f1123b-a_cut194194.jpg','2022'),
(null,'2022年，稻香村集团向江苏、山东、辽宁、北京、河北等地捐赠了价值150多万元物资，支援各地抗击新冠疫情。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2022'),
(null,'2021年8月，稻香村集团向尘肺病人、革命老区捐赠了价值240多万元产品。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2021'),
(null,'2021年7月，河南发生暴雨灾害，稻香村集团紧急调动资源，连夜筹措50万包、价值200余万元的各类糕点、蛋糕、面包产品驰援一线灾区。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/7/27/14150385e2a3bd19-e_cut194194.jpg','2021'),
(null,'稻香村集团（苏州）荣获2020年度“中国轻工业二百强企业”、“中国轻工业科技百强企业”及“中国轻工业食品行业五十强企业”三项大奖，分别位列第104位、第99位、第31位。','	http://www.daoxiangcun.cn/UpLoadFile/Images/2021/7/27/1403832386bcdba5-9_cut194194.jpg','2021'),
(null,'2021中国品牌价值评价信息发布，稻香村集团品牌价值167.29亿元。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/5/13/97394979ff71403-a_cut194194.jpg','2021'),
(null,'2020年12月15日，农业农村部等八部委联合印发通知，递补128家企业为农业产业化国家重点龙头企业，其中山东稻香村食品工业有限公司在列。','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/12/24/17302088b21c17fe-9_cut194194.jpg','2020'),
(null,'2020年12月，稻香村集团荣获2020年度中国食品企业七星质量奖。','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/12/24/1729369476ca81272-e_cut194194.jpg','2020'),
(null,'2020中国品牌价值评价信息发布，稻香村集团品牌价值136.55亿元。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2020'),
(null,'2020年初，新型冠状病毒感染肺炎疫情突发，稻香村集团向湖北、北京、上海、河南、山东、山西、青海等地捐赠了价值400多万元的物资，为一线工作者带来暖心关爱。','	http://www.daoxiangcun.cn/UpLoadFile/Images/2020/2/13/205136434f0c002-4_cut194194.jpg','2020'),
(null,'稻香村集团荣获新华网颁发的“金箸奖”2019年度食品标杆企业。','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/2/18/1729455492978e72-a_cut194194.jpg','2019'),
(null,'稻香村集团荣膺人民日报社颁发的“2019年度中国品牌案例奖”。','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/2/19/1034375371a793ef9-3_cut194194.jpg','2019'),
(null,'2019年，苏州稻香村入围“焙烤食品糖制品行业（糕点）十强企业”。','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/2/19/1030125240d71f62-3_cut194194.jpg','2019'),
(null,'2019年，苏州稻香村荣膺中国改革开放40周年焙烤食品糖制品产业“领军企业”。','http://www.daoxiangcun.cn/UpLoadFile/Images/2020/2/19/102696539899af3d-b_cut194194.jpg','2019'),
(null,'2019中国品牌价值评价信息发布，稻香村集团品牌价值133.09亿元。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2019'),
(null,'2019年，稻香村入驻成都，五店同开。同时，新一座现代化生产加工中心在成都正式落成投产。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2019'),
(null,'2018年，成立天津稻香村食品有限公司。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2018'),
(null,'2018年稻香村集团荣获新华网颁布的“金箸奖”2018年度食品标杆企业。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2018'),
(null,'2018年稻香村集团荣获人民日报社颁布的“2018一带一路建设案例”奖。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2018'),
(null,'2018年中国品牌价值评价信息发布，稻香村集团品牌价值112.80亿元。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2018'),
(null,'2017年，成立稻香村食品集团（香河）有限公司，稻香村食品集团（金乡）有限公司。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2017'),
(null,'2017年稻香村集团亮相2017哈萨克斯坦阿斯塔纳世博会。','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/1/7/1440453297c4bf1ad-d_cut194194.jpg','2017'),
(null,'稻香村集团荣获新华网金箸奖“2017年度中国食品标杆企业”称号。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2017'),
(null,'2017年，稻香村集团荣获“中国月饼行业十大品牌”称号。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/9/12/95714591650bc821-4_cut194194.jpg','2017'),
(null,'在阿里研究院评出的2016年度食品类中华老字号中，稻香村集团电商销量领先。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/3/92429301c2319f7f-2_cut194194.jpg','2016'),
(null,'2016中国品牌价值评价信息发布，稻香村集团品牌价值112.34亿元，荣登中华老字号品牌榜。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2016'),
(null,'2016年稻香村集团山东菏泽加工中心正式建成投产。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/145024524c05febc2-0_cut194194.jpg','2016'),
(null,'2016年稻香村集团全年总捐赠达1000多万元。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2016'),
(null,'2016中国品牌价值评价发布，稻香村集团品牌价值112.34亿元。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/145024524c05febc2-0_cut194194.jpg','2016'),
(null,'2016年稻香村集团中秋季月饼全国销售总量突破1亿块。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/145033104ac1b993-1_cut194194.jpg','2016'),
(null,'2016年稻香村集团慰问邢台灾区，捐赠110万元稻香村产品。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/144828797e630974d-1_cut194194.jpg','2016'),
(null,'2015年，稻香村集团与沈阳副食集团展开合作，“沈阳稻香村”正式纳入稻香村大家庭。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2015'),
(null,'2014年，成立稻香村集团，开始集团化发展。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2014'),
(null,'2013年，紧随国家“一带一路”战略，稻香村集团成立海外事业部，启动实施“稻香村出海”战略。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2013'),
(null,'2012年9月5日稻香村集团北京工厂落户通州食品工业园区。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/1445545103193e366-f_cut194194.jpg','2012'),
(null,'2009年，稻香村集团成立电子商务部门，启动实施“稻香村+互联网”战略。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2009'),
(null,'2009年，稻香村苏式月饼制作技艺被列入江苏省非物质文化遗产名录。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/1444527786a401911-5_cut194194.jpg','2009'),
(null,'2008年，稻香村集团获中国食品工业协会颁发的：国饼十佳（帮式代表企业）-苏式玫瑰月饼。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2008'),
(null,'2007年苏州稻香村获中国食品工业协会颁发的：月饼龙头企业。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2007'),
(null,'2007年，稻香村的 “苏式月饼制作技艺”被列入苏州市第三批非物质文化遗产名录。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2007'),
(null,'2007年，获中国食品协会颁发的：苏式月饼传承代表。获得“全国工业产品许可证书”，是全国首批取得国家“QS”证的企业。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2007'),
(null,'2007年，苏州稻香村收购中国粮油集团旗下张家港福临门大家庭食品有限公司。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2007'),
(null,'2006年，苏州稻香村月饼被中国食品工业协会评为：中国十佳月饼品牌。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2006'),
(null,'2006年，苏州稻香村食品厂被国家商务部首批认定为“中华老字号”。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/1441314080dfbdc01-d_cut194194.jpg','2006'),
(null,'2004年，成立了股份制企业——苏州稻香村食品工业有限公司。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','2004'),
(null,'1999年，苏州稻香村食品厂被国内贸易部评为“中华老字号”。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/144112652f85e4065-2_cut194194.jpg','1999'),
(null,'1982年，江苏省在徐州进行同行业产品质量评比和技术操作比赛中，苏州稻香村云片糕获全省第一名。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1982'),
(null,'1949年解放，苏州稻香村成立基层工会。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1949'),
(null,'1925年苏州稻香村向民国农商部申请了稻香村商号注册执照，并注明了“禾”字商标。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/23/143218649e46655e9-4_cut194194.jpg','1925'),
(null,'1905年，稻香村向清朝商务部申请了注册，为稻香村茶食糖果号。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1905'),
(null,'1863年，太平天国退出苏州，稻香村在观前街翻建店面，影响力遍布江南各地。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1863'),
(null,'1860年太平天国攻破苏州城，包括稻香村店铺受到严重损失。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1860'),
(null,'公元1773年—公元1851年，稻香村发展迅速，处于清末的经营鼎盛期。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1773'),
(null,'稻香村，于清乾隆三十八年（公元1773年）创立于苏州。','http://www.daoxiangcun.cn/Template/dxc/images/jcy-li-bg_03.jpg','1773');


--品牌-集团荣誉上
create table dxc_jtrytop(
  id int primary key auto_increment,
  title varchar(12),
  pic varchar(124)
);
--插入数据
insert into dxc_jtrytop values
(null,'非物质文化遗产','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/13/163913730ef5e2164-9_cen315315.jpg'),
(null,'中华老字号','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/13/1639339627dc22f2-c_cen315315.jpg'),
(null,'优秀示范企业','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/13/16385355362421e7f-f_cen315315.jpg'),
(null,'稻香村商标','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/4/13/143574026776ab42-6_cen315315.jpg');


--品牌-集团荣誉下
create table dxc_jtry(
  id int primary key auto_increment,
  title varchar(12),
  pic varchar(124)
);
--插入数据
insert into dxc_jtry values
(null,'面包技术比赛金奖','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/4/13/135811554e2b6260-a_cen250250.jpg'),
(null,'月饼技术比赛金奖','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/4/13/13571034180965638-9_cen250250.jpg'),
(null,'HACCP体系认证','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/4/13/1008903b5555712-3_cen250250.jpg'),
(null,'质量管理体系认证','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/4/13/959322602d8a4f9f-6_cen250250.jpg'),
(null,'月饼行业企业荣誉','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/13/163851354e80fee2-a_cen250250.jpg'),
(null,'2006年国饼十佳','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/2/6/1337449421c7ba89c-3_cen250250.jpg'),
(null,'中华老字号','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/2/6/133447842fafdf928-4_cen250250.jpg'),
(null,'月饼品牌荣誉','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/2/6/133232882682c3205-c_cen250250.jpg');


--品牌-传承人-数据表
create table dxc_ccr(
  id int primary key auto_increment,
  title varchar(6),
  info varchar(360),
  pic varchar(124)
);
--插入数据
insert into dxc_ccr values
(null,'第一代','吴金棠，镇江人，清光绪三十二年（1906）进稻香村作学徒，作糕饼师傅，1958年退休。',null),
(null,'第二代','徐寅伯，苏州人，民国十九年（1930）进稻香村作学徒，师承吴金棠，1965年退休。',null),
(null,'第三代','王渭仪，苏州人，民国二十六年（1937）进稻香村作学徒，师承徐寅伯，为1956年公私合营前最后一名苏式月饼把作师傅，1985年退休。',null),
(null,'第四代','徐全生，苏州人，徐寅伯之子，1966年接班进稻香村作学徒，师承王渭仪，曾任糕点车间主任、生产经营部经理；蒋祖健，苏州人，1970年进稻香村作学徒，师承王渭仪。','http://www.daoxiangcun.cn/UpLoadFile/images/2017/1/12/1827227830a77d1e6-1.jpg'),
(null,'第五代','徐红生，镇江人，1983年顶替父亲进稻香村作学徒，师承徐全生。后在稻香村食品工业有限公司做糕点技术负责人，技术全面，掌握选料、配料、糕点制作、烘烤等全部工艺。2007年被劳动和社会保障部评为全国技术能手。','	http://www.daoxiangcun.cn/UpLoadFile/images/2017/1/12/18261585456620c2d-5.jpg'),
(null,'第六代','艾满，安徽人，他作为公司重点培养的技术人才，2010年在第十一届全国月饼技术比赛中获金奖并同时获得全国技术能手称号，于2013年3月拜徐红生为师。','http://www.daoxiangcun.cn/UpLoadFile/images/2017/1/12/182650944137dae13-1.jpg');



--品牌-文化活动-数据表
create table dxc_whhd(
  id int primary key auto_increment,
  title varchar(124),
	ctime varchar(12),
	content varchar(1024),
  pic varchar(124),
  detail varchar(10240)
);
--插入数据
insert into dxc_whhd values
(null,'稻香村集团关爱贫困儿童 捐赠春蕾午餐','2016-12-17','12月28日，由中国儿童少年基金会、人民网主办，人民网舆情监测室承办，原森态、稻香村、好想你等企业协办的“2016春蕾计划慈善公益盛典”在人民日报新媒体大厦隆重举行。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/3/91822973e9b15761-3_cut600380.jpg','[{"new_pic":"","pic_title":"","new_content":"12月28日，由中国儿童少年基金会、人民网主办，人民网舆情监测室承办，原森态、稻香村、好想你等企业协办的“2016春蕾计划慈善公益盛典”在人民日报新媒体大厦隆重举行。陈思思、江疏影、侯耀华、方青卓、鞠萍、李春波夫妇、邹市明冉莹颖夫妇、程琳、姜超、邱启明、郁可唯、张赫宣等十余位明星携300位专家学者、企业负责人、媒体出席盛典。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2017/1/6/162852526eaeb6fda-e.png","pic_title":"","new_content":"“春蕾计划”是1989年中国儿童少年基金会发起并组织实施的一项社会公益事业，主要救助贫困地区儿童、尤其是女童重返校园。同时，资助儿童早期教育、大龄女童职业教育与资助义务教育阶段儿童，把提供优质教育与学生营养午餐、改善学生身体素质统筹推进。稻香村集团一直以来积极响应落实党中央和政府关于发展慈善公益事业的决策部署，关注贫困儿童公益事业，在典礼现场为贫困学生捐赠2000份春蕾午餐，并为到场参与春蕾计划的300位明星学者与工作人员准备了美味的稻香村爱心茶点，为公益事业贡献自己一份力量。"},{"new_pic":"http://www.daoxiangcun.cn/UpLoadFile/images/2017/3/3/928202397a9000f6-0.jpg","pic_title":"","new_content":"1773年（清乾隆三十八年）稻香村在苏州创立，经过两个多世纪的发展，稻香村从创始初期苏州观前街老店的单一店面发展到现如今已经在全国拥有9家分公司、6个现代化大型生产基地，并在山东、江苏、云南等地拥有多个原料直供基地的大型集团化食品企业。一代又一代稻香村人肩负着民族的责任与担当，2016年稻香村集团积极参与公益事业，邢台水灾稻香村团队慰问灾区，捐赠110万元稻香村糕点产品；多次参与山东地区扶贫活动并对当地教师进行爱心捐赠，支持贫困地区教育事业；赞助纪念红军长征胜利80周年大型活动，弘扬伟大长征精神；协办“2016春蕾计划慈善公益盛典”，为贫困学生捐赠2000份春蕾午餐。2016年稻香村集团全年总捐赠达1000多万元。稻香村始终秉承“厚道做人，地道做事，成人达己，追求卓越”的经营理念，积极承担社会责任，传承历史文化，为让中华美食飘香全球，为让本土品牌跻身世界品牌之林而继续努力！"}]'),
(null,'成人达已 追求卓越—稻香村集团2018财年会议暨中秋总结工作会','2018-10-31','10月21日，稻香村集团2018财年会议暨中秋总结工作会议在山东公司召开，会议由集团办公室副主任刘子建主持，集团总裁周广军先生、总经理王芳女士、集团各中心负责人、各分公司总经理及经理级以上中高管共计70 余人出席会议。','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/1/10/16502527451ac504d-e_Cut285180.jpg',''),
(null,'不忘初心 砥砺前行—稻香村集团中高管MBA培训','2018-11-09','2014年10月22日至25日，由稻香村集团办公室组织，集团全体中高层管理人员参与，在山东省菏泽市开展了为期4天的中高管MBA培训。','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/1/10/1626179299240cb6-0_Cut285180.jpg',''),
(null,'稻香村集团2017年优秀合作伙伴全球行之欧洲和泰国','2018-03-19','2012年3月份，稻香村集团为奖励过去一年销售成绩突出的合作伙伴，特此组织欧洲和泰国旅游活动，以此鼓励合作伙伴再接再厉，再创佳绩！同时，为表彰优秀员工、拓展员工视野，优秀员工也一同参加此次旅游活动。','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/3/19/10313886692417678-a_Cut285180.jpg',''),
(null,'稻香村集团2017“百年稻香匠心工艺 同心筑梦共庆元旦”年会','2018-01-05','2017年12月29日下午 ，稻香村集团“百年稻香匠心工艺，同心筑梦共庆元旦”主题年会隆重举办。此次年会，稻香村人欢聚一堂，共同欢度新的一年到来。','http://www.daoxiangcun.cn/UpLoadFile/Images/2018/1/5/17371289521862ad4-e_Cut285180.jpg',''),
(null,'“携手共进，激扬青春”稻香村集团大学生储备人员素质拓展集训活动','2017-07-25','2017年7月21日晚上6点，稻香村集团北京分公司人力资源部组织第一届大学生储备人员开展了“携手共进，激扬青春”素质拓展集训活动。活动共有26位大学生参加，参与者都本着必胜的决心和信念。此次活动为了让稻香村集团第一届大学生储备人员尽快融入工作环境，提升大学生储备人...','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/7/25/1648116652a58864f-5_Cut285180.jpg',''),
(null,'稻香村振兴民族品牌 成功举办中华老字号品牌故事演讲比赛','2017-07-06','12月2日，稻香村集团承办的中华老字号品牌故事演讲比赛在稻香村集团北京生产基地顺利举行。本次品牌故事演讲比赛由中国国际贸易促进委员会商业行业分会、新华社参考消息报社主办。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/6/18017489c300967f-c_Cut285180.jpg',''),
(null,'稻香村集团山东公司组织“全员价值观专项培训活动”','2017-06-13','2017年5月25日，山东稻香村食品工业有限公司综合管理部组织举办了为期五天的“全员价值观专项培训活动”。本次培训由综合管理部组织并主讲，包含了破冰自我介绍、企业宣传片观看、企业文化与公司制度课件宣讲、价值观体验团队游戏、考试等环节，旨在让每位员工了解认同稻香...','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/6/13/153748732f0bb0b3f-9_Cut285180.jpg',''),
(null,'“绿色出行，骑乐无穷” 稻香村春季团队建设骑行活动札记','2017-06-13','春光明媚，林荫苍翠。4月12日下午14点，稻香村集团北京分公司组织员工开展了2017年“绿色出行，骑乐无穷”环保骑行活动。100位骑手整装待发，浩浩荡荡出发前往通州大运河森林公园。一路春风和煦，边骑行，边欣赏沿途美丽的景色，回归大自然，践行绿色出行，传递正能量。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/5/9/9249176bb6133f7-1_Cut285180.jpg',''),
(null,'稻香村参与纪念红军长征胜利80周年大型活动','2017-04-17','《永恒的记忆》—纪念红军长征胜利80周年暨毛泽东同志诞辰123周年大型演唱会，于2016年12月22日晚在北京中国航天科工集团二院文化中心举办。此次演唱会由北京市委党史研究室、北京新四军暨华中抗日根据地研究会主办，北京新四军老战士合唱团承办。出席演唱会的有北京市委党...','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/6/152729391dc811083-1_Cut285180.jpg','');


------------------------------------------------------------
--产品-分类-数据表
create table dxc_cpfl(
  id int primary key auto_increment,
  title varchar(32) unique
);
-- 插入数据
insert into dxc_cpfl values
(1,'糕点系列'),
(2,'休闲食品'),
(3,'节日食品'),
(4,'面包主食'),
(5,'坚果系列'),
(6,'速冻食品');


--产品-商品类型-数据表
create table dxc_cplx(
  id int primary key auto_increment,
  title varchar(32) unique,
  cpfl_id int,
	-- 将cpfl_id列作为外键，它的值必须在dxc_cpfl表的id中出现过
	foreign key(cpfl_id) references dxc_cpfl(id)
);
-- 插入数据
insert into dxc_cplx values
(1,'散点',1),
(2,'糕点礼盒',1),
(3,'休闲零食',2),
(4,'休闲糕点',2),
(5,'桃酥',2),
(6,'鸡蛋卷',2),
(7,'瓦片系列',2),
(8,'中秋月饼',3),
(9,'端午粽子',3),
(10,'年品贺礼',3),
(11,'面包',4),
(12,'蛋糕',4),
(13,'坚果',5),
(14,'坚果礼盒',5),
(15,'饺子',6),
(16,'汤圆',6);


--产品-产品详情-数据表
create table  dxc_cpxq(
  id int primary key auto_increment,
  title varchar(124),
	specs varchar(12),
	ingredients varchar(50),
  texture varchar(24),
  for_people varchar(24) DEFAULT '非糖尿病人群',
  storage_condition varchar(24) DEFAULT '请放置于干燥阴凉处',
  detail varchar(240),
  pic varchar(1024),
  cplx_id int,
	-- 将cplx_id列作为外键，它的值必须在dxc_cplx表的id中出现过
	foreign key(cplx_id) references dxc_cplx(id)
);
--插入数据
insert into  dxc_cpxq values
(null,'枣花酥','50g左右','红枣/小麦粉','酥松香甜', '', '', '传统工艺，花式酥皮，皮馅分明，内馅以精选优质红枣为基料而制成，入口酥松细软，枣香味芳香浓郁！','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/950308372457653a-1_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/9503358484d5ca8a-4_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/95037701530c9493-3_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/95040289d67189f2-4_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/9504354436994712-5_cen100100.jpg',1),
(null,'山楂锅盔','50g左右','山楂馅/小麦粉/鸡蛋','酥软酸甜','','','形似锅盔，馅皮酥松，内如金糕，色泽通透、酸甜可口，疏松软糯，轻轻咬上一口便叫人欲罢不能、回味无穷！','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/134925345bc1b87dd-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13492844a591a87f-d_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13493130604f1b003-6_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1349337336f0269b7-b_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/134936249a51ac0ed-5_cut1200662.jpg',1),
(null,'牛舌饼','50g左右','小麦粉/猪油','酥松绵软','非糖尿病人群','请放置于干燥阴凉处','口感酥松绵软，馅心细腻油润，味道醇美。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_3602_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_3620_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_3629_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_4060_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_4061_cut1200662.jpg',1),
(null,'抹茶酥','50g左右','抹茶粉/抹茶馅/小麦粉','酥松、甜味适中','非糖尿病人群','请放置干燥阴凉处','精选优质食材，十足好料，传统工艺精心烘制，口感细腻，层层酥软，抹茶味清香。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_4050%E5%B0%8F%E6%96%87%E4%BB%B6%E5%A4%B9_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_4055%E5%B0%8F%E6%96%87%E4%BB%B6%E5%A4%B9_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/IMG_4056_cut1200662.jpg',1),
(null,'定胜糕','50g左右','红豆/面粉','松软香糯带甜甜的豆沙味',null,'请放置于干燥阴凉处','选其红豆外皮，配以醇厚的豆沙馅料，多次调味尝试，松软香糯，带甜甜的豆沙味。','http://www.daoxiangcun.cn/UpLoadFile/Images/2023/1/11/162422871f705a2ef-3_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2023/1/11/1624257240ab48550-6_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2023/1/11/16242779033d9193f-6_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2023/1/11/16242965067375fbe-5_cut1200662.jpg',1),
(null,'墨子酥','50g左右','小麦粉/黑芝麻馅','酥松细腻',null,'请放置于干燥阴凉处','形如金砖，色泽乌亮。饼体细腻有亮泽，馅心为黑芝麻馅，口感酥松细腻，具有浓郁黑麻香味。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/928418550e7e7768-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/928547309862f06-d_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/929275309070eec-a_cut1200662.jpg',1),
(null,'糕点礼盒1','2kg','见包装','酥松、甜味适中','非糖尿病人群','请放置于干燥阴凉处','内配枣花酥、山楂锅盔、墨子酥、状元饼、绿豆饼、黑芝麻椒盐、牛舌饼、豆沙饼、南瓜饼、抹茶酥、杏蓉饼、香芋饼、相思红豆饼、莲蓉饼、紫薯酥、黄油枣泥饼、蜜瓜酥、凤梨酥','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/152535104b90d3503-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/15253585253ae7ae0-8_cut1200662.jpg',2),
(null,'糕点礼盒2糖醇','1.5kg','见包装','酥松、甜味适中','非糖尿病人群','请放置于干燥阴凉处','内配苦荞南瓜饼、抹茶饼、椒盐酥饼、牛舌酥、老婆饼（红豆味）、百果酥饼、乌麻酥、墨子酥、黑芝麻酥条、南瓜酥条、杂粮饼','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/15231988628e78872-b_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/1523206459b9ee6b6-1_cut1200662.jpg',2),
(null,'糕点礼盒3','1.5kg','见包装','酥松、甜味适中','非糖尿病人群','请放置于干燥阴凉处','内配黑麻椒盐饼、状元饼、山楂锅盔、牛舌饼、豆沙饼、枣花酥、墨子酥、南瓜饼、绿豆饼、抹茶酥、香芋饼、莲蓉饼、杏蓉饼','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/151941207c673e8d9-1_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/15194135967582345-c_cut1200662.jpg',2),
(null,'糕点礼盒4稻香迎福','1.6kg','见包装','酥松、甜味适中','非糖尿病人群','请放置于干燥阴凉处','内配枣花酥、山楂锅盔、墨子酥、状元饼、绿豆饼、黑芝麻椒盐、牛舌饼、豆沙饼、南瓜饼、抹茶酥、杏蓉饼、香芋饼、莲蓉饼、南瓜酥条','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/143634241bf78add2-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/1436347949f870302-5_cut1200662.jpg',2),
(null,'蜜麻花','260g','小麦粉／植物油／白砂糖','芝麻味、黑糖味、原味','非糖尿病人群','请放置于干燥阴凉处','精选优质高质面粉原料，传统工艺制作，经典传统三种口味，鲜香可口，唇齿留香，回味无穷。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13110221c04b4ee7-e_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1311224a9304c4d-b_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13114890b077899-7_cen100100.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/15502821893dc2c29-1_cen100100.jpg',3),
(null,'驴打滚','360g','糯米粉/豆馅/白砂糖','入口绵软、香甜可口','','','精选优质高质原料，传统工艺制作，外层粘满豆面，豆香馅甜，入口绵软，别具风味，豆馅入口即化，香甜入心。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13175770877f6cabd-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/131802185a32d5dd-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/1552345094e7aa91-8_cut1200662.jpg',3),
(null,'江米条','260g','糯米粉/植物油/白砂糖','口感酥脆、香甜可口','','','精选优质高质原料，传统工艺制作，经典传统，口感酥脆、香甜可口。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1323438460ba61436-5_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1323475567e0303d5-0_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/132354588bd871541-2_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/1553568927a04d4e5-e_cut1200662.jpg',3),
(null,'拿破仑','370g/700g/1080g','小麦粉/奶油/鸡蛋','入口松软、奶香四溢','','','优质高质面粉、新鲜鸡蛋、层层奶油，加上薄脆饼干，高温烘焙而成。带有西式甜点的独特搭配，入口松软奶香四溢，带给你独特的味觉体验。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/162142554f2a09c07-e_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/139399928707e429-e_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13936720a21c0c47-8_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13931628ee963c67-d_cut1200662.jpg',4),
(null,'老婆饼','210g','面粉/鸡蛋/砂糖','软糯香甜','','','精选新鲜的鸡蛋、优质面粉、精细白糖，融合丰富馅料，高温烘焙，皮包馅厚，松软细腻，甜而不腻。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/19/QQ%E6%88%AA%E5%9B%BE20170119103751_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/19/QQ%E6%88%AA%E5%9B%BE20170119103800_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/162255880757db4bd-1_cut1200662.jpg',4),
(null,'糖醇桃酥','560g','见包装','好吃不腻 酥香可口','','','糖醇桃酥，兼具健康和口感。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/164636371556905ad-a_cut1200662.jpg',5),
(null,'桃酥','640g','小麦粉/鸡蛋','香酥可口','','','优质小麦粉和新鲜鸡蛋比例配料，精心烤制，成就桃酥特色口感。经过高温精心烤制，造就桃酥金黄色泽，传承百年老工艺和现代科技完美结合，精心打造出了更加美味的桃酥。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/16412949249b222b7-7_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/11595214453fcf761-0_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/115948982df38847a-b_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1159459692f6b3db6-1_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/11594179537b16f49-7_cut1200662.jpg',5),
(null,'鸡蛋卷','220g/440g','小麦粉/鸡蛋','酥脆、香气浓郁','','','秉承传统工艺，奶香浓郁、醇香松软、酥脆可口，精选鸡蛋与小麦黄金搭配，健康美味就是这么简单。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/17059533040d88b1-4_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/132554423dac8d8d7-c_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13265915b87c5e66-b_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/1705955195fcc190-2_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1326345cdfc8b11-a_cut1200662.jpg',6),
(null,'芝麻瓦片','120g /700g','小麦粉/芝麻','酥脆可口、芝麻香味浓郁','','','酥脆的薄薄饼干配上香甜的芝麻，精心烤制，造就芝麻瓦片的焦黄色泽，满满的芝麻散发浓郁的香味，现代科技和创新工艺的完美结合，精心打造不一般的美味，不一般的芝麻瓦片。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/1766346ff4af2ca-c_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/115052477cc98dfc3-9_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/176630913e96b73-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/115049401c6f000f3-9_cut1200662.jpg',7),
(null,'杏仁瓦片','120g /700g','小麦粉/杏仁','酥脆可口、芝麻香味浓郁','','','酥脆的薄薄饼干配上香甜的杏仁，精心烤制，造就芝麻瓦片的焦黄色泽，满满的芝麻散发浓郁的香味，现代科技和创新工艺的完美结合，精心打造不一般的美味，不一般的芝麻瓦片。','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/17724340adaadbbb-4_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/115052477cc98dfc3-9_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/11/176630913e96b73-a_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/115049401c6f000f3-9_cut1200662.jpg',7),
(null,'苏式月饼','310g','见包装','皮薄馅香 清甜不腻','','','多种选择，苏式百果、苏式椒盐、苏式玫瑰、苏式五仁、苏式黑麻果仁、苏式豆沙。','http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/2/95640153a7acc0cf-6_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/2/9563141272ad12f-e_cut1200662.jpg',8),
(null,'私房粽','2290g','糯米/蛋黄/豆沙/鲜肉/蜜枣/鸭蛋/熏鱼','粽香四溢',null,'','内配：蛋黄鲜肉粽、红烧排骨、干贝鲜肉粽、鲜肉粽、豆沙粽、八宝粽、紫米栗蓉粽、蜜枣粽、咸鸭蛋、独立装绿豆冰糕、苏式熏鱼、紫糯八宝饭。','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/5/15/1310482530d9e3cf-e_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2019/5/15/1310486512021bf0b-3_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2019/5/15/1310475096ce1ad5b-8_cut1200662.jpg',9),
(null,'手撕面包棒','186g','见包装','香甜酥松',null,'','奶香原味，色泽金黄，麦香扑鼻而来','http://www.daoxiangcun.cn/UpLoadFile/Images/2021/10/12/164326681627f1c1d-3_cut1200662.jpg',11),
(null,'开心果','100g','开心果','入口醇香、清香酥脆',null,'','精选优质果实，传统工艺制作，拒绝过度加工和添加，还原果实原香。开心果果实疙瘩饱满，无漂白，入口醇香，清香酥脆。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13191396573fe249-4_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13193931605c8f26-5_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/13197855ff91859-8_cut1200662.jpg',13),
(null,'巴旦木','100g','扁桃仁','醇香四溢',null,'','精选优质果实，工艺制作，拒绝过度加工和添加，还原果实原香。巴旦木开口大易剥取。入口香酥滑嫩，醇香四溢。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/1342285883966677-f_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/134237186d2e7d9fb-b_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/10/134240474b204e10b-2_cut1200662.jpg',13),
(null,'稻香金牌水磨汤圆','360g','糯米/花生/黑芝麻/玫瑰/豆沙','糯性十足 口感醇香','','冷冻','皮好：选用优质糯米精细研磨成糯米粉，柔韧爽滑，糯性十足；馅好：选用有计划生、醇香黑芝麻等上等原料；味道好：佐料先用非转基因色拉油。多年从业技师精心调配，浓郁醇香。分为：黑芝麻汤圆，五仁汤圆，豆沙汤圆，玫瑰汤圆，糖醇花生汤圆，什锦汤圆。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/9/1839556021da31cb6-4_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/9/1839586479e192431-2_cut1200662.jpg@http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/9/184001818aa33cc6-c_cut1200662.jpg',16);


--------------------------------------------------------------------
--我们-服务理念-数据表
create table dxc_fwln(
  id int primary key auto_increment,
  pic varchar(128),
  content varchar(1024)
);
--插入数据
insert into dxc_fwln values
(null,'http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/10/1048178797ece4663-6.jpg','“厚道做人，地道做事，成人达己，追求卓越”是稻香村集团的品牌精神，也是稻香村集团的服务理念。这不仅仅是一句标语，一句口号，也是稻香村人做人做事的原则和标准。'),
(null,'http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/10/10523825324cd7550-c.jpg','厚道做人，使得稻香村集团从不在背后诋毁任何同行品牌，帮助同行竞争企业度过一个个难关，致力于把稻香村品牌做大做强走向世界。'),
(null,'http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/10/10524822085928bd1-6.jpg','稻香村集团将每个产品的质量严格把控，保证产品质量安全。对于每个消费者都百分用心，提供优质的服务。'),
(null,'http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/10/10525817826a5e4e2-a.jpg','每一位稻香村集团的员工都愿意在自我成功的道路上为别人付出更多，帮助他人，成全自己。'),
(null,'http://www.daoxiangcun.cn/UpLoadFile/Images/2017/3/10/1053105929ce56bc7-7.jpg','追求卓越，更是让稻香村集团的行业高度更上一层楼，追求卓越的不仅是产品品质，更是追求卓越人格与品德的道理！也正是这种为人做事厚道真诚才能打动亿万消费者，换来他们的支持与真情。');


--我们-加工厂照片
create table dxc_jgc(
  id int primary key auto_increment,
  name varchar(24),
  address varchar(32),
  pic varchar(128)
);
--插入数据
insert into dxc_jgc values
(null,'苏州加工中心','苏州工业园区唯亭镇唯文路','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/12/11523222870246746-1_cut800406.jpg'),
(null,'北京加工中心','北京市通州区潞城镇武兴北路4号','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/12/115221331c06a9739-3_cut800406.jpg'),
(null,'山东加工中心','菏泽市定陶区广州路南段西侧','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/4/9/9423281ad9137f-f_cut800406.jpg'),
(null,'沈阳加工中心','沈阳市经济技术开发区洪湖一街26号','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/12/957423366e9438d3-6_cut800406.jpg'),
(null,'菏泽加工中心','山东省菏泽市定陶区冉堌镇工业园','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/4/9/85732675018149aa-d_cut800406.jpg'),
(null,'金乡加工中心','山东金乡县经济开发区','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/12/115253708d3781f94-3_cut800406.jpg'),
(null,'张家港加工中心','江苏省张家港市金港镇长山工业集中区','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/12/95759441a29fefd7-9_cut800406.jpg'),
(null,'香河加工中心','香河县景观大道北侧','http://www.daoxiangcun.cn/UpLoadFile/Images/2019/4/9/8533312e85908fa-c_cut800406.jpg');



--我们-分支机构-数据表
create table dxc_fzjg(
  id int primary key auto_increment,
  title varchar(24),
  address varchar(48),
  postal_code varchar(12),
  phone varchar(15),
  fax varchar(15),
  website varchar(24)
);
--插入数据
insert into dxc_fzjg values
(null,'苏州稻香村食品有限公司','苏州工业园区唯亭镇唯文路19号','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'北京苏稻食品工业有限公司','北京市通州区潞城镇武兴北路4号','101107','010-81539797','010-60527945','www.daoxiangcun.cn'),
(null,'沈阳稻香村食品工业有限公司','沈阳市经济技术开发区洪湖一街26号','110000','024-31635503','024-31635503','www.sydxc1773.com'),
(null,'山东稻香村食品工业有限公司','山东省菏泽市定陶区广州路南端西侧','274112','0530-2211773','0530-2211773','www.daoxiangcun.cn'),
(null,'菏泽稻香村食品有限公司','山东省菏泽市定陶区冉堌镇工业园（冉达路以东，向阳路北侧）','274100','0530-2536866','暂无','www.daoxiangcun.cn'),
(null,'稻香村食品集团(金乡)有限公司','山东省济宁市金乡县食品工业园区崇文大道西段12号','262700','0537-28775199','暂无','www.daoxiangcun.cn'),
(null,'金乡稻香村食品有限公司','山东金乡县经济开发区(鱼山镇食品工业园区)','272200','0537-2327966','0537-2327966','www.daoxiangcun.cn'),
(null,'稻香村五号码头(金乡)食品有限公司','山东省济宁市金乡县食品工业园区崇文大道西段12号','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'张家港福吉佳食品股份有限公司','江苏省张家港市金港镇长山村1幢','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'成都稻香村风味食品有限公司','四川省成都市中国（四川）自由贸易试验区成都高新区天府大道北段1700号4栋1单元8层818号','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'山东稻香印务有限公司','山东省菏泽市定陶区广州路南段西侧（山东稻香村食品工业有限公司院内）','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'稻香村科技有限公司','苏州工业园区唯亭唯文路19号','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'北京稻香私房食品有限公司','北京市通州区潞城镇武兴北路4号','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn'),
(null,'河南稻香村食品有限公司','郑州市郑东新区金水东路49号原盛国际3号楼','215122','0512-87182818','0512-87182818','www.daoxiangcun.cn');


--我们-食品安全
create table dxc_spaq(
  id int primary key auto_increment,
  step int,
  title varchar(24),
  content varchar(255),
  pic varchar(128)
);
--插入数据
insert into dxc_spaq values
(null,'01','选料、制陷工艺','稻香村集团在江苏、山东、湖南、云南等地联合建有原料基地，严格把控原料来源，甄选健康新鲜优质原料，面粉、食用油等原材料为集团统一采购模式，选用中粮、福临门等大品牌，保证原料品质与质量。制馅采用传统制馅工艺，结合现代化加工，保证馅料的传统口味与健康。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/22/1037564330b48db1d-0_Cut400400.jpg'),
(null,'02','成型工艺','稻香村集团采用手工与机器自动制模相结合的制作方式。成型工艺，采用国际先进的全自动化生产线，确保产品生产的专业化、标准化，特色产品由大师领衔严格工艺规程流水线纯手工制作。','http://www.daoxiangcun.cn/UpLoadFile/Images/2016/12/22/1038627312b8e0fb-5_Cut400400.jpg'),
(null,'03','烘焙工艺','全自动化烘焙区中，糕点坯自动化生产线整齐码放在烤盘中，经过运输履带直接输送至烤箱烘焙、冷却设备，整个制模、烘焙、冷却过程，工作人员仅需要将烤盘放入自动化生产线即可，减少手工作业提升了食品的安全性。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/11/1519412822b5974a-e_Cut400400.jpg'),
(null,'04','杀菌工艺','稻香村集团加工中心按照药品生产级别设计建造，全空调GMP模范车间。整个厂区使用10万级空气净化设备，全方位透明化无菌生产；生产员工要经过7次检查、除尘消毒，经过8道隔离门，确保产品的安全高品质。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/18/144236829103b6006-7_Cut400400.jpg'),
(null,'05','包装工艺','稻香村集团加工中心采用国际领先的食品包装设备，创新的KPET66°热包装，杜绝通常冷包装微生物污染的可能性，并让产品新鲜度和营养丝毫未损。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/11/152446844f5e04d09-5_Cut400400.jpg'),
(null,'06','检验工艺','从原料进厂到产品出厂要经过金属检测、质量检测、菌落检测、包装检测等12次严格检查。另采取生产工序自检互检，品控部产品专检，生产卫生检查组巡检三道工序保证产品质量合格。','http://www.daoxiangcun.cn/UpLoadFile/Images/2017/1/11/1528216875248850d-a_Cut400400.jpg');


-------------------------------------------------------------------------------------
--加盟结果
create table dxc_jmjg(
  id int primary key auto_increment,
  title varchar(32) unique
);
-- 插入数据
insert into dxc_jmjg values
(1,'待审批'),
(2,'通过'),
(3,'拒绝');


--加盟申请
create table dxc_jmsq(
  id int primary key auto_increment,
  name varchar(12),
  email varchar(30),
  phone char(11),
  liuyan varchar(2048),
  jmjg_id int DEFAULT 1,
	-- 将jmjg_id列作为外键，它的值必须在dxc_jmjg表的nid中出现过
	foreign key(jmjg_id) references dxc_jmjg(id)
);
--插入数据  --sex:1-男  0-女   shop:1-有  0-无
insert into dxc_jmsq values
(null,'郭晨鹏','22921@163.com',13155555555,'希望能得到贵公司青睐,得到这个机会',1),
(null,'薛振祥','22922@163.com',13166666666,'希望能得到贵公司青睐,得到这个机会',1),
(null,'郭霖红','22923@163.com',13177777777,'希望能得到贵公司青睐,得到这个机会',1),
(null,'张元许','22924@163.com',13188888888,'希望能得到贵公司青睐,得到这个机会',2),
(null,'宋洋洋','22925@163.com',13199999999,'希望能得到贵公司青睐,得到这个机会',3);



-------------------------------------------------------------------------------------
--登录-数据表
create table admin(
  id int primary key auto_increment,
  username varchar(255),
  password varchar(255),
  nickname varchar(255),
  phone varchar(255),
  email varchar(255)
);
--插入数据
insert into admin values
(null,'admin','123456','超级管理员','13101234567','123456@139.com'),
(null,'guolinhong','123456','管理员','13155555555','guo@163.com'),
(null,'xuezhenxiang','123456','管理员','13166666666','xue@qq.com'),
(null,'guochenpeng','123456','管理员','13177777777','guo@qq.com'),
(null,'songyangyang','123456','管理员','13188888888','song@qq.com'),
(null,'zhangyuanxv','123456','管理员','13199999999','zhang@qq.com');

update admin set password = MD5(password)
