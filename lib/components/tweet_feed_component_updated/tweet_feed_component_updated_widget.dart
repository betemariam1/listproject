import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'tweet_feed_component_updated_model.dart';
export 'tweet_feed_component_updated_model.dart';

class TweetFeedComponentUpdatedWidget extends StatefulWidget {
  const TweetFeedComponentUpdatedWidget({
    super.key,
    required this.tweetDocument,
    required this.isDetails,
    required this.name,
  });

  final ThreadsRecord? tweetDocument;
  final bool? isDetails;
  final String? name;

  @override
  State<TweetFeedComponentUpdatedWidget> createState() =>
      _TweetFeedComponentUpdatedWidgetState();
}

class _TweetFeedComponentUpdatedWidgetState
    extends State<TweetFeedComponentUpdatedWidget> {
  late TweetFeedComponentUpdatedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TweetFeedComponentUpdatedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'postDetailsPage',
          queryParameters: {
            'threadDoc': serializeParam(
              widget!.tweetDocument,
              ParamType.Document,
            ),
            'name': serializeParam(
              widget!.name,
              ParamType.String,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            'threadDoc': widget!.tweetDocument,
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 4.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30.0,
                    height: 30.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget!.tweetDocument?.userImageUrl,
                        'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Ficons.png?alt=media&token=1710cad9-166b-4bf7-a63c-5775209141e1',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return (MediaQuery.sizeOf(context).width * 0.8);
                      } else if (MediaQuery.sizeOf(context).width >
                          kBreakpointMedium) {
                        return (MediaQuery.sizeOf(context).width * 0.25);
                      } else if (MediaQuery.sizeOf(context).width >
                          kBreakpointLarge) {
                        return (MediaQuery.sizeOf(context).width * 0.25);
                      } else {
                        return (MediaQuery.sizeOf(context).width * 0.8);
                      }
                    }(),
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget!.name,
                                'name',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                        Text(
                          dateTimeFormat(
                              "relative", widget!.tweetDocument!.timePosted!),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF536371),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.7);
                                  } else if (MediaQuery.sizeOf(context).width >
                                      kBreakpointMedium) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.2);
                                  } else if (MediaQuery.sizeOf(context).width >
                                      kBreakpointLarge) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.2);
                                  } else {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.7);
                                  }
                                }(),
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.7);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.2);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.2);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.7);
                                        }
                                      }(),
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget!.tweetDocument?.threadsContent,
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 8.0),
                          child: Builder(
                            builder: (context) {
                              final video =
                                  widget!.tweetDocument?.videoMedia?.toList() ??
                                      [];

                              return Wrap(
                                spacing: 15.0,
                                runSpacing: 10.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children:
                                    List.generate(video.length, (videoIndex) {
                                  final videoItem = video[videoIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'videoPage',
                                        queryParameters: {
                                          'videoUrl': serializeParam(
                                            'url',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return (widget!.tweetDocument!
                                                      .videoMedia.length >
                                                  1
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.375)
                                              : (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.75));
                                        } else if (MediaQuery.sizeOf(context)
                                                .width >
                                            kBreakpointMedium) {
                                          return (widget!.tweetDocument!
                                                      .videoMedia.length >
                                                  1
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1)
                                              : (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.2));
                                        } else if (MediaQuery.sizeOf(context)
                                                .width >
                                            kBreakpointLarge) {
                                          return (widget!.tweetDocument!
                                                      .videoMedia.length >
                                                  1
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.1)
                                              : (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.2));
                                        } else {
                                          return (widget!.tweetDocument!
                                                      .videoMedia.length >
                                                  1
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.375)
                                              : (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.75));
                                        }
                                      }(),
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.32, 0.0),
                                            child: Container(
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return (widget!
                                                              .tweetDocument!
                                                              .videoMedia
                                                              .length >
                                                          1
                                                      ? (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4)
                                                      : (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.8));
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointMedium) {
                                                  return (widget!
                                                              .tweetDocument!
                                                              .videoMedia
                                                              .length >
                                                          1
                                                      ? (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1)
                                                      : (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2));
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointLarge) {
                                                  return (widget!
                                                              .tweetDocument!
                                                              .videoMedia
                                                              .length >
                                                          1
                                                      ? (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1)
                                                      : (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2));
                                                } else {
                                                  return (widget!
                                                              .tweetDocument!
                                                              .videoMedia
                                                              .length >
                                                          1
                                                      ? (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4)
                                                      : (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.8));
                                                }
                                              }(),
                                              height: 200.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: OctoImage(
                                                  placeholderBuilder: (_) =>
                                                      SizedBox.expand(
                                                    child: Image(
                                                      image: BlurHashImage(
                                                          'L57UF;4n9Z~WM|t7t7Io4n%M%MD%'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    videoItem.previewImageUrl,
                                                  ),
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                  errorBuilder: (context, error,
                                                          stackTrace) =>
                                                      Image.asset(
                                                    'assets/images/error_image.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF181E10),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.play_circle,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 15.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                        if (widget!.tweetDocument?.threadsVideo != null &&
                            widget!.tweetDocument?.threadsVideo != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'videoPage',
                                  queryParameters: {
                                    'videoUrl': serializeParam(
                                      widget!.tweetDocument?.threadsVideo,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              child: Container(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.8);
                                  } else if (MediaQuery.sizeOf(context).width >
                                      kBreakpointMedium) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.2);
                                  } else if (MediaQuery.sizeOf(context).width >
                                      kBreakpointLarge) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.2);
                                  } else {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.8);
                                  }
                                }(),
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.32, 0.0),
                                      child: Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.8);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width >
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.2);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width >
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.2);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.8);
                                          }
                                        }(),
                                        height: 200.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: OctoImage(
                                            placeholderBuilder: (_) =>
                                                SizedBox.expand(
                                              child: Image(
                                                image: BlurHashImage(
                                                    'L57UF;4n9Z~WM|t7t7Io4n%M%MD%'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            image: CachedNetworkImageProvider(
                                              valueOrDefault<String>(
                                                widget!.tweetDocument
                                                    ?.thumbnailImage,
                                                'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                                              ),
                                            ),
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Image.asset(
                                              'assets/images/error_image.png',
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF181E10),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.play_circle,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 15.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        Divider(
                          height: 8.0,
                          thickness: 1.0,
                          indent: 4.0,
                          endIndent: 4.0,
                          color: Color(0xFFF1EBEB),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
