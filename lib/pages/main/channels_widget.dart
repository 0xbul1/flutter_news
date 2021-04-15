import 'package:flutter/material.dart';
import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget newsChannelsWidget({
  List<ChannelResponseEntity> channels,
  Function(ChannelResponseEntity) onTap,
}) {
  return Container(
    height: ftSetHeight(137),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: channels.map<Widget>((item) {
          return Container(
            width: ftSetWidth(70),
            height: ftSetHeight(97),
            margin: EdgeInsets.symmetric(horizontal: ftSetWidth(10)),
            child: InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 图标
                  Container(
                    height: ftSetWidth(64),
                    margin: EdgeInsets.symmetric(horizontal: ftSetWidth(3)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          child: Container(
                            height: ftSetWidth(64),
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackground,
                              boxShadow: [
                                Shadows.primaryShadow,
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            ),
                            child: Container(),
                          ),
                        ),
                        Positioned(
                          left: ftSetWidth(10),
                          top: ftSetWidth(10),
                          right: ftSetWidth(10),
                          child: Image.asset(
                            "assets/images/channel-${item.code}.png",
                            fit: BoxFit.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 标题
                  Text(
                    item.title,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.thirdElementText,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w400,
                      fontSize: ftSetFontSize(14),
                      height: 1,
                    ),
                  ),
                ],
              ),
              onTap: () => onTap(item),
            ),
          );
        }).toList(),
      ),
    ),
  );
}
