import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/custom_labels.dart';
import 'package:chat_app/widgets/custom_logo.dart';
import 'package:chat_app/widgets/custom_material_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(
                    title: 'Registro',
                  ),
                  _Form(),
                  const Labels(
                    route: 'login',
                    titleCuenta: '¿Ya tienes cuenta?',
                    titleAuth: 'Ingresa ahora!',
                  ),
                  const Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity_outlined,
            placeholder: 'Nombre de suario',
            textCtrl: nameCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textCtrl: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textCtrl: passCtrl,
            isPassword: true,
          ),
          CustomMaterialButton(
              text: 'Ingrese',
              onPressed: () {
                null;
              })
        ],
      ),
    );
  }
}
