// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pluto_grid_plus/pluto_grid_plus.dart';
import 'package:flutter/scheduler.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PlutoGridPage extends StatefulWidget {
  const PlutoGridPage({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<PlutoGridPage> createState() => _PlutoGridPageState();
}

class _PlutoGridPageState extends State<PlutoGridPage> {
  late List<PlutoRow> rows2;
  late List<PlutoColumn> columns;
  late List<PlutoColumnGroup> columnGroups;
  bool isCollapsed = false;
  bool isLoading = true;
  List<TwitterUsersRecord>? twitterUsersData;
  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      twitterUsersData = await queryTwitterUsersRecordOnce(
        queryBuilder: (twitterUsersRecord) => twitterUsersRecord.where(
          'active',
          isEqualTo: true,
        ),
      );
      if (twitterUsersData?.length != 0) {
        columns = <PlutoColumn>[
          PlutoColumn(
            title: 'Status',
            field: 'status',
            readOnly: true,
            width: 100,
            minWidth: 100,
            type: PlutoColumnType.text(),
            enableEditingMode: false,
            renderer: (rendererContext) {
              return Builder(
                builder: (context) {
                  if (rendererContext.row.cells['status']?.value ?? false) {
                    return SizedBox(
                      height: 40.0,
                      width: 100.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (states) {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            },
                          ),
                          elevation: MaterialStateProperty.resolveWith<double?>(
                            (states) {
                              return 3.0;
                            },
                          ),
                          padding: MaterialStateProperty.all(
                              EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0)),
                          side: MaterialStateProperty.resolveWith<BorderSide?>(
                            (states) {
                              return BorderSide(
                                color:
                                    Colors.grey, // Set the border color to grey
                                width: 1.0, // Set the border width
                              );
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: AutoSizeText(
                          'Edit',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  } else {
                    return SizedBox(
                      height: 40.0,
                      width: 100.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (states) {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            },
                          ),
                          elevation: MaterialStateProperty.resolveWith<double?>(
                            (states) {
                              return 3.0;
                            },
                          ),
                          padding: MaterialStateProperty.all(
                              EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0)),
                          side: MaterialStateProperty.resolveWith<BorderSide?>(
                            (states) {
                              return BorderSide(
                                color:
                                    Colors.grey, // Set the border color to grey
                                width: 1.0, // Set the border width
                              );
                            },
                          ),
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'surveyPage',
                            queryParameters: {
                              'twitterUserID': serializeParam(
                                rendererContext.row.cells['username']?.value,
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
                        child: AutoSizeText(
                          'Claim',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  }
                },
              );
            },
          ),
          PlutoColumn(
            title: twitterUsersData!.first.nameData.name,
            field: 'name',
            width: 130,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.usernameData.name,
            field: 'username',
            width: 130,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.act.name,
            field: 'act',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.bat.name,
            field: 'bat',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.cbHigh.name,
            field: 'cbHigh',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.cbLow.name,
            field: 'cbLow',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.chHigh.name,
            field: 'chHigh',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.chLow.name,
            field: 'chLow',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.ev.name,
            field: 'ev',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.fbHigh.name,
            field: 'fbHigh',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.fbLow.name,
            field: 'fbLow',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.gpaData.name,
            field: 'gpaData',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.height.name,
            field: 'height',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.location.name,
            field: 'location',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.nameData.name,
            field: 'nameData',
            width: 130,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.ofv.name,
            field: 'ofv',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.positions.name,
            field: 'positions',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.sat.name,
            field: 'sat',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.slHigh.name,
            field: 'slHigh',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.slLow.name,
            field: 'slLow',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.sport.name,
            field: 'sport',
            readOnly: true,
            width: 100,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.throw1.name,
            field: 'throw1',
            readOnly: true,
            width: 100,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.topFb.name,
            field: 'topFb',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.twitterId.name,
            field: 'twitterId',
            readOnly: true,
            width: 130,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.weight.name,
            field: 'weight',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
          PlutoColumn(
            title: twitterUsersData!.first.yearData.name,
            field: 'yearData',
            width: 100,
            readOnly: true,
            type: PlutoColumnType.text(),
          ),
        ];
        rows2 = twitterUsersData?.map((player) {
              return PlutoRow(
                cells: {
                  'status': PlutoCell(value: player.isClaimed),
                  'name': PlutoCell(value: player.nameData.value),
                  'username': PlutoCell(value: player.usernameData.value),
                  'act': PlutoCell(
                      value: player.act.value != 0 ? player.act.value : '-'),
                  'bat': PlutoCell(value: player.bat.value),
                  'cbHigh': PlutoCell(
                      value:
                          player.cbHigh.value != 0 ? player.cbHigh.value : '-'),
                  'cbLow': PlutoCell(
                      value:
                          player.cbLow.value != 0 ? player.cbLow.value : '-'),
                  'chHigh': PlutoCell(
                      value:
                          player.chHigh.value != 0 ? player.chHigh.value : '-'),
                  'chLow': PlutoCell(
                      value:
                          player.chLow.value != 0 ? player.chLow.value : '-'),
                  'ev': PlutoCell(
                      value: player.ev.value != 0 ? player.ev.value : '-'),
                  'fbHigh': PlutoCell(
                      value:
                          player.fbHigh.value != 0 ? player.fbHigh.value : '-'),
                  'fbLow': PlutoCell(
                      value:
                          player.fbLow.value != 0 ? player.fbLow.value : '-'),
                  'gpaData': PlutoCell(
                      value: player.gpaData.value != 0
                          ? player.gpaData.value
                          : '-'),
                  'height': PlutoCell(
                      value:
                          player.height.value != 0 ? player.height.value : '-'),
                  'location': PlutoCell(value: player.location.value),
                  'nameData': PlutoCell(value: player.nameData.value),
                  'ofv': PlutoCell(value: player.ofv.value),
                  'positions': PlutoCell(value: player.positions.value),
                  'sat': PlutoCell(
                      value: player.sat.value != 0 ? player.sat.value : '-'),
                  'slHigh': PlutoCell(
                      value:
                          player.slHigh.value != 0 ? player.slHigh.value : '-'),
                  'slLow': PlutoCell(
                      value:
                          player.slLow.value != 0 ? player.slLow.value : '-'),
                  'sport': PlutoCell(value: player.sport.value),
                  'throw1': PlutoCell(value: player.throw1.value),
                  'topFb': PlutoCell(
                      value:
                          player.topFb.value != 0 ? player.topFb.value : '-'),
                  'twitterId': PlutoCell(value: player.twitterId.value),
                  'weight': PlutoCell(
                      value:
                          player.weight.value != 0 ? player.weight.value : '-'),
                  'yearData': PlutoCell(
                      value: player.yearData.value != 0
                          ? player.yearData.value
                          : '-'),
                },
              );
            }).toList() ??
            [];

        /// columnGroups that can group columns can be omitted.
        columnGroups = [
          PlutoColumnGroup(
              title: 'Status', fields: ['status'], expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.nameData.name,
              fields: ['name'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.usernameData.name,
              fields: ['username'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.act.name,
              fields: ['act'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.bat.name,
              fields: ['bat'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.cbHigh.name,
              fields: ['cbHigh'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.cbLow.name,
              fields: ['cbLow'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.chHigh.name,
              fields: ['chHigh'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.chLow.name,
              fields: ['chLow'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.ev.name,
              fields: ['ev'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.fbHigh.name,
              fields: ['fbHigh'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.fbLow.name,
              fields: ['fbLow'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.gpaData.name,
              fields: ['gpaData'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.height.name,
              fields: ['height'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.location.name,
              fields: ['location'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.nameData.name,
              fields: ['nameData'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.ofv.name,
              fields: ['ofv'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.positions.name,
              fields: ['positions'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.sat.name,
              fields: ['sat'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.slHigh.name,
              fields: ['slHigh'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.slLow.name,
              fields: ['slLow'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.sport.name,
              fields: ['sport'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.throw1.name,
              fields: ['throw1'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.topFb.name,
              fields: ['topFb'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.twitterId.name,
              fields: ['twitterId'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.weight.name,
              fields: ['weight'],
              expandedColumn: true),
          PlutoColumnGroup(
              title: twitterUsersData!.first.yearData.name,
              fields: ['yearData'],
              expandedColumn: true),
        ];
        isLoading = false;
        setState(() {});
      } else {
        isLoading = false;
        setState(() {});
      }
    });
  }

  late final PlutoGridStateManager stateManager;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : PlutoGrid(
              columns: columns,
              rows: rows2,
              columnGroups: columnGroups,
              onLoaded: (PlutoGridOnLoadedEvent event) {
                stateManager = event.stateManager;
              },
              onRowDoubleTap: (PlutoGridOnRowDoubleTapEvent onRowDoubleTap) {},
              onChanged: (PlutoGridOnChangedEvent event) {},
              configuration: const PlutoGridConfiguration(
                  style: PlutoGridStyleConfig(
                      //enableGridBorderShadow: true,
                      enableCellBorderHorizontal: true,
                      enableColumnBorderVertical: true,
                      gridBorderWidth: 1,
                      gridBorderColor: Colors.white
                      //gridBorderColor:Colors.white,
                      //borderColor: Colors.white
                      )),
            ),
    );
  }
}
