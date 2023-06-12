import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/pages/commom_widgets/components/custom_text_field.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:greengrocer/src/config/app_data.dart' as app_data;

class ProfileTab extends StatelessWidget {
  ProfileTab({super.key});

  final phoneFormatters = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );
  final cpfFormatters = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do Usuário',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            initialValue: app_data.user.email,
            icon: Icons.email,
            label: 'Email',
            readOnly: true,
          ),
          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
            initialValue: app_data.user.name,
            readOnly: true,
          ),
          CustomTextField(
            icon: Icons.phone,
            label: 'Telefone',
            inputFormatters: [phoneFormatters],
            initialValue: app_data.user.phone,
            readOnly: true,
          ),
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            inputFormatters: [cpfFormatters],
            isSecret: true,
            initialValue: app_data.user.cpf,
            readOnly: true,
          ),
          SizedBox(
            height: 45,
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Atualizar Senha'),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: CustomColors.customSwatchColor,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
