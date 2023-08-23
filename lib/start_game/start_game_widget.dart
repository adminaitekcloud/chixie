import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'start_game_model.dart';
export 'start_game_model.dart';

class StartGameWidget extends StatefulWidget {
  const StartGameWidget({Key? key}) : super(key: key);

  @override
  _StartGameWidgetState createState() => _StartGameWidgetState();
}

class _StartGameWidgetState extends State<StartGameWidget> {
  late StartGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartGameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.soundPlayer ??= AudioPlayer();
                if (_model.soundPlayer!.playing) {
                  await _model.soundPlayer!.stop();
                }
                _model.soundPlayer!.setVolume(1.0);
                _model.soundPlayer!
                    .setAsset('assets/audios/transition-explosion-121425.mp3')
                    .then((_) => _model.soundPlayer!.play());

                context.pushNamed('EggPick');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/chixiextreme2023.appspot.com/o/game%2F1.gif?alt=media&token=2e3d12bf-f217-422b-9ed1-4c2970bca623',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
