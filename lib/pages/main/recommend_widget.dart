import 'package:flutter/material.dart';
import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

// 推荐阅读
Widget recommendWidget(NewsRecommendResponseEntity newsRecommend) {
  return Container(
    margin: EdgeInsets.all(ftSetWidth(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 图
        imageCached(
          newsRecommend.thumbnail,
          width: ftSetWidth(335),
          height: ftSetHeight(290),
        ),
        // 作者
        Container(
          margin: EdgeInsets.only(top: ftSetHeight(14)),
          child: Text(
            newsRecommend.author,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.normal,
              color: AppColors.thirdElementText,
              fontSize: ftSetFontSize(14),
            ),
          ),
        ),
        // 标题
        Container(
          margin: EdgeInsets.only(top: ftSetHeight(10)),
          child: Text(
            newsRecommend.title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
              fontSize: ftSetFontSize(24),
              height: 1,
            ),
          ),
        ),
        // 一行 3 列
        Container(
          margin: EdgeInsets.only(top: ftSetHeight(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 分类
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 120,
                ),
                child: Text(
                  newsRecommend.category,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: AppColors.secondaryElementText,
                    fontSize: ftSetFontSize(14),
                    height: 1,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              // 添加时间
              Container(
                width: ftSetWidth(15),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 120,
                ),
                child: Text(
                  '• ${ftTimeLineFormat(newsRecommend.addtime)}',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: AppColors.thirdElementText,
                    fontSize: ftSetFontSize(14),
                    height: 1,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              // 更多
              Spacer(),
              InkWell(
                child: Icon(
                  Icons.more_horiz,
                  color: AppColors.primaryText,
                  size: 24,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
