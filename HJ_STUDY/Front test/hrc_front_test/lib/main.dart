// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigater',
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  StartPage({this.backgroundimageProvider});

  final ImageProvider backgroundimageProvider;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: StartPagePainter(backgroundimageProvider));
  }
}

class StartPagePainter extends ChangeNotifier implements CustomPainter {
  StartPagePainter(ImageProvider backgroundimageProvider) {
    this.backgroundimageProvider = (backgroundimageProvider != null)
        ? DecorationImage(image: backgroundimageProvider, fit: BoxFit.cover)
            .createPainter(_onUpdate)
        : null;
  }

  DecorationImagePainter backgroundimageProvider;

  void _onUpdate() => this.notifyListeners();
  bool hitTest(Offset offset) => false;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-137.0000000000, -616.0000000000);

// 6:2725 : Start page (COMPONENT)
    var draw_6_2725 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          137.0000000000,
          616.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:137,t:616,r:-137,b:-137,w:360,h:674.628173828125) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 2:633 : backgroundimage (RECTANGLE)
      var draw_2_633 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(-316.0000000000, 0.0, 991.0000000000,
            743.0000000000) /* H:LEFT V:TOP F:(l:-316,t:0,r:-315,b:-315,w:991,h:743) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 991.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 743.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          (Path()..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
        ];
        fillGeometry.forEach((path) {
          if (backgroundimageProvider != null) {
            backgroundimageProvider.paint(
                canvas, path.getBounds(), path, ImageConfiguration());
          }
        });
        canvas.restore();
      };
      draw_2_633(canvas, frame);

// 2:634 : start button (GROUP)
      var draw_2_634 = (Canvas canvas, Rect container) {
// 2:635 : Rectangle 36 (RECTANGLE)
        var draw_2_635 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              48.0000000000,
              555.0000000000,
              265.0000000000,
              45.0000000000) /* H:LEFT V:TOP F:(l:48,t:555,r:47,b:47,w:265,h:45) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 265.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 45.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(15)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(
                path,
                (Paint()
                  ..shader = LinearGradient(
                          begin:
                              Alignment(0.9607843845331381, 0.9000000632359826),
                          end: Alignment(
                              -1.0000000025517197, -1.1471388961252775),
                          stops: [0, 1],
                          colors: [
                            _ColorCatalog.instance.color_1,
                            _ColorCatalog.instance.color_2
                          ],
                          tileMode: TileMode.clamp)
                      .createShader(Offset.zero & frame.size)));
          });
          canvas.restore();
        };
        draw_2_635(canvas, frame);

// 2:636 : 시작하기 (TEXT)
        var draw_2_636 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              144.0000000000,
              565.0000000000,
              74.0000000000,
              24.0000000000) /* H:LEFT V:TOP F:(l:144,t:565,r:142,b:142,w:74,h:24) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 20.0000000000,
            fontWeight: FontWeight.w400,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("시작하기");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_2_636(canvas, frame);
      };
      draw_2_634(canvas, frame);

// 2:637 : Logo (GROUP)
      var draw_2_637 = (Canvas canvas, Rect container) {
// 2:638 : Rectangle 26 (RECTANGLE)
        var draw_2_638 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              79.0000000000,
              190.7202796936,
              12.7132863998,
              72.0419616699) /* H:LEFT V:TOP F:(l:79,t:190.72027969360352,r:268.2867136001587,b:268.2867136001587,w:12.713286399841309,h:72.04196166992188) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 12.7132863998),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 72.0419616699),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_638(canvas, frame);

// 2:639 : Rectangle 27 (RECTANGLE)
        var draw_2_639 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              79.0000000000,
              232.3916091919,
              11.3006992340,
              190.6992950439) /* H:LEFT V:TOP F:(l:79,t:232.39160919189453,r:269.6993007659912,b:269.6993007659912,w:11.300699234008789,h:190.6992950439453) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            0.0000000000,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            0.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 11.3006992340),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 190.6992950439),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_639(canvas, frame);

// 2:640 : Rectangle 30 (VECTOR)
        var draw_2_640 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              125.6153831482,
              205.5524482727,
              14.8321676254,
              36.7272720337) /* H:LEFT V:TOP F:(l:125.61538314819336,t:205.55244827270508,r:219.5524492263794,b:219.5524492263794,w:14.832167625427246,h:36.727272033691406) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            0.0000000000,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            0.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 14.8321676254),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 36.7272720337),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_0.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_640(canvas, frame);

// 2:641 : Rectangle 31 (VECTOR)
        var draw_2_641 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              125.6153831482,
              205.5524482727,
              14.8321676254,
              36.7272720337) /* H:LEFT V:TOP F:(l:125.61538314819336,t:205.55244827270508,r:219.5524492263794,b:219.5524492263794,w:14.832167625427246,h:36.727272033691406) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            0.0000000000,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            0.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 14.8321676254),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 36.7272720337),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_1.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_641(canvas, frame);

// 2:642 : Rectangle 29 (VECTOR)
        var draw_2_642 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              150.2473754883,
              232.1708908081,
              13.1859197617,
              41.1573829651) /* H:LEFT V:TOP F:(l:150.24737548828125,t:232.17089080810547,r:196.56670475006104,b:196.56670475006104,w:13.185919761657715,h:41.15738296508789) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            0.8829476237,
            0.4694715047,
            0.0,
            0.0,
            -0.4694715047,
            0.8829476237,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 13.1859197617),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 41.1573829651),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_2.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_642(canvas, frame);

// 2:643 : Rectangle 28 (RECTANGLE)
        var draw_2_643 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              125.6153831482,
              190.7202796936,
              11.3006992340,
              72.0419616699) /* H:LEFT V:TOP F:(l:125.61538314819336,t:190.72027969360352,r:223.08391761779785,b:223.08391761779785,w:11.300699234008789,h:72.04196166992188) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 11.3006992340),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 72.0419616699),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_643(canvas, frame);

// 2:644 : Ellipse 4 (VECTOR)
        var draw_2_644 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              154.5789413452,
              190.7202796936,
              21.9253406525,
              44.4744300842) /* H:LEFT V:TOP F:(l:154.57894134521484,t:190.72027969360352,r:183.49571800231934,b:183.49571800231934,w:21.92534065246582,h:44.474430084228516) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 21.9253406525),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 44.4744300842),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_3.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_644(canvas, frame);

// 2:645 : C (TEXT)
        var draw_2_645 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              176.4685287476,
              166.0000000000,
              74.8671340942,
              107.3566436768) /* H:LEFT V:TOP F:(l:176.4685287475586,t:166.00000000000728,r:108.66433715820312,b:108.66433715820312,w:74.86713409423828,h:107.35664367675781) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_1;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 100.0000000000,
            fontWeight: FontWeight.w400,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("C");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_2_645(canvas, frame);

// 2:646 : Polygon 1 (REGULAR_POLYGON)
        var draw_2_646 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              281.0000000000,
              195.6643352509,
              63.5664329529,
              32.4895095825) /* H:LEFT V:TOP F:(l:281,t:195.6643352508545,r:15.43356704711914,b:15.43356704711914,w:63.56643295288086,h:32.48950958251953) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            -0.0000000000,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            -0.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 63.5664329529),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 32.4895095825),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_4.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          canvas.restore();
        };
        draw_2_646(canvas, frame);
      };
      draw_2_637(canvas, frame);
      canvas.restore();
    };
    draw_6_2725(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(StartPagePainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(StartPagePainter oldDelegate) {
    return oldDelegate.backgroundimageProvider != this.backgroundimageProvider;
  }
}

class _PathCatalog {
  _PathCatalog() {
    this.path_0 = _build_0();
    this.path_1 = _build_1();
    this.path_2 = _build_2();
    this.path_3 = _build_3();
    this.path_4 = _build_4();
  }

  Path path_0;

  Path path_1;

  Path path_2;

  Path path_3;

  Path path_4;

  static final _PathCatalog instance = _PathCatalog();

  static Path _build_0() {
    var path = Path();
    path.moveTo(3.5314700000, 0.0);
    path.lineTo(14.8322000000, 0.0);
    path.lineTo(14.8322000000, 31.0769000000);
    path.lineTo(0.7062940000, 36.7273000000);
    path.lineTo(0.0, 36.7273000000);
    path.lineTo(1.4125900000, 35.3147000000);
    path.lineTo(2.8251700000, 32.4895000000);
    path.lineTo(3.5314700000, 29.6643000000);
    path.lineTo(3.5314700000, 0.0);
    path.close();
    return path;
  }

  static Path _build_1() {
    var path = Path();
    path.moveTo(3.5314700000, 0.0);
    path.lineTo(14.8322000000, 0.0);
    path.lineTo(14.8322000000, 31.0769000000);
    path.lineTo(0.7062940000, 36.7273000000);
    path.lineTo(0.0, 36.7273000000);
    path.lineTo(1.4125900000, 35.3147000000);
    path.lineTo(2.8251700000, 32.4895000000);
    path.lineTo(3.5314700000, 29.6643000000);
    path.lineTo(3.5314700000, 0.0);
    path.close();
    return path;
  }

  static Path _build_2() {
    var path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(13.1859000000, 0.0);
    path.lineTo(12.8717000000, 41.1574000000);
    path.lineTo(0.0, 34.1197000000);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  static Path _build_3() {
    var path = Path();
    path.moveTo(21.8896000000, 24.0140000000);
    path.cubicTo(21.8896000000, 35.3262000000, 14.1193000000, 40.9650000000,
        4.9393300000, 44.4744000000);
    path.cubicTo(-5.9827800000, 44.4744000000, 8.4692100000, 33.9131000000,
        9.1775400000, 23.3077000000);
    path.cubicTo(10.5881000000, 12.7243000000, -5.6568900000, 7.7692300000,
        2.1165900000, 0.0);
    path.cubicTo(13.0387000000, 0.0, 22.5848000000, 12.0180000000,
        21.8896000000, 24.0140000000);
    path.close();
    return path;
  }

  static Path _build_4() {
    var path = Path();
    path.moveTo(31.7832000000, 0.0);
    path.lineTo(59.3083000000, 24.3671000000);
    path.lineTo(4.2581400000, 24.3671000000);
    path.lineTo(31.7832000000, 0.0);
    path.close();
    return path;
  }
}

class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_3);
  }

  Paint paint_0;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog() {}

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(255, 35, 25, 60);
    this.color_1 = Color.fromARGB(191, 129, 97, 208);
    this.color_2 = Color.fromARGB(255, 186, 104, 186);
    this.color_3 = Color.fromARGB(255, 255, 255, 255);
  }

  Color color_0;

  Color color_1;

  Color color_2;

  Color color_3;

  static final _ColorCatalog instance = _ColorCatalog();
}

class _TextStyleCatalog {
  _TextStyleCatalog() {
    this.ui_TextStyle_0 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_3,
      fontSize: 20.0000000000,
      fontWeight: FontWeight.w400,
    );
    this.ui_TextStyle_1 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_3,
      fontSize: 100.0000000000,
      fontWeight: FontWeight.w400,
    );
  }

  ui.TextStyle ui_TextStyle_0;

  ui.TextStyle ui_TextStyle_1;

  static final _TextStyleCatalog instance = _TextStyleCatalog();
}

class Data {
  Data({this.isVisible});

  final bool isVisible;

  @override
  bool operator ==(o) => o is Data && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}

class TextData extends Data {
  TextData({isVisible, this.text}) : super(isVisible: isVisible);

  final String text;

  @override
  bool operator ==(o) =>
      o is TextData && isVisible == o.isVisible && text == o.text;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    result = 37 * result + (this.text?.hashCode ?? 0);
    return result;
  }
}

class VectorData extends Data {
  VectorData({isVisible}) : super(isVisible: isVisible);

  @override
  bool operator ==(o) => o is VectorData && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}
