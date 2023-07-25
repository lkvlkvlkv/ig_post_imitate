import 'package:flutter/material.dart';
import '../components/account_bar.dart';
import '../components/post_view.dart';
import '../components/post_action_bar.dart';
import '../components/like_bar.dart';
import '../components/content_zone.dart';
import '../components/comment_bar.dart';

class IgPostPage extends StatelessWidget {
  const IgPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          alignment: Alignment.bottomRight,
          width: 470,
          child: ListView(            
            children: <Widget>[
              const AccountBar(),
              const PostView(),
              const PostActionBar(),
              const LikeBar(),
              ExpandableText(account: 'imqingfeng', text: '：\n睡美人：創作是等待知音，是不怕塵封、沉睡，是對自己說的一聲晚安。\n\n睡美人出生時就遭到詛咒，但她並不知道詛咒，活得開開心心的。後來她被紡錘刺傷了，陷入了沉睡，接著有人將她喚醒，繼續過著美好的生活。怎麼樣，聽起來其實滿愉快的吧，而且中間還睡了個好覺（那一覺應該真的挺飽的吧），這不是現代人最求之不得的事之一嗎。\n\n所以有時候壞事未必是壞事，不知情或許更好；好事也未必是好事，不知情也無妨。\n\n巴哈寫下了《馬太受難曲》，這作品在當時並不那麼受到歡迎，甚至被敵視與嘲笑，在他死後更是無人演奏。無人問津到一個世紀後，才經由孟德爾頌的指揮演出，大受歡迎。但或許巴哈生前根本不為此困擾，也不會對百年後的事知情。時間，的確會證明很多事，但常常對當事人已經不重要了。\n\n或許我們的日常，也是讓許多不同的美好，就這樣從我們的眼前流逝、錯過而絲毫不覺。不過，其實也沒有那麼重要吧。\n\n我心愛的人，心愛的歌，心愛的家，心愛的星球，每晚我都對你們說聲晚安，用我的心在你們額上親吻。安心睡吧，有你們的我，很圓滿；希望我如此用真心直視著你，也讓你感到幸福，這大概就是天堂。\n\n晚安，一句簡單的話，卻有深深的祝福。\n\n\n\n🎬MV收看：https://youtu.be/siC9KwMaVTw\n📀豪華版數位收聽：https://umg.lnk.to/2qutS779\nMV Director｜黃中平\nPhotographer｜楊世全 @xzs369\nMakeup｜兔姨 @onetwo.chang\nHairstylist｜@zoom_edmund @zoomhairstyling\nStylist｜施筱柔\n\n#吳青峰 #睡美人 #馬拉美的星期二', trimLines: 2, key: UniqueKey()),
              TextInputWithPlaceholder(key: UniqueKey()),
            ],
          ),
        ),
      ),
    );
  }
}