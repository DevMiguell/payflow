import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';

import '../../shared/widgets/set_label_buttons/set_label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    // return BottomSheetWidget(
    //   title: "Nao foi possivel ler o codigo de barras",
    //   subtitle: "Tente escanear novamente ou digite o codigo do seu boleto.",
    //   primaryLabel: "Escanear novamente",
    //   onPrimaryPressed: () {},
    //   secondaryLabel: "Digitar codigo",
    //   onSecondaryPressed: () {},
    // );
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground),
            centerTitle: true,
            leading: const BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
              onPrimaryPressed: () {},
              onSecondaryPressed: () {},
              primaryLabel: "Inserir código do boleto",
              secondaryLabel: "Adicionar da galeria"),
        ),
      ),
    );
  }
}
