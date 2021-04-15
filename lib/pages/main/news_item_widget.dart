import 'package:flutter/material.dart';
import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

Widget newsItem(NewsItem item) {
  return Container(
    height: ftSetHeight(161),
    padding: EdgeInsets.all(ftSetWidth(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // 图
        imageCached(
          item.thumbnail,
          width: ftSetWidth(121),
          height: ftSetWidth(121),
        ),
        // 右侧
        SizedBox(
          width: ftSetWidth(194),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // 作者
              Container(
                margin: EdgeInsets.all(0),
                child: Text(
                  item.author,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: AppColors.thirdElementText,
                    fontSize: ftSetFontSize(14),
                    height: 1,
                  ),
                ),
              ),
              // 标题
              Container(
                margin: EdgeInsets.only(top: ftSetHeight(10)),
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryText,
                    fontSize: ftSetFontSize(16),
                    height: 1,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                ),
              ),
              // Spacer
              Spacer(),
              // 一行 3 列
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // 分类
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: ftSetWidth(60),
                      ),
                      child: Text(
                        item.category,
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
                      constraints: BoxConstraints(
                        maxWidth: ftSetWidth(100),
                      ),
                      child: Text(
                        '• ${ftTimeLineFormat(item.addtime)}',
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
        ),
      ],
    ),
  );
}
