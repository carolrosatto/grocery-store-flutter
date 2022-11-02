import 'package:flutter/material.dart';
import 'package:green_market/src/components/custom_text_field.dart';
import 'package:green_market/src/config/app_data.dart' as appData;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil do usuário"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.email,
            icon: Icons.email,
            label: "E-mail",
          ),
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.name,
            icon: Icons.person,
            label: "Nome",
          ),
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.phone,
            icon: Icons.phone,
            label: "Celular",
          ),
          CustomTextField(
            isReadOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: "CPF",
            hasHideButton: true,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                side: const BorderSide(color: Colors.green),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text(
                "Atualizar senha",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.0,
                      ),
                      child: Text(
                        "Atualização de senha",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const CustomTextField(
                      icon: Icons.lock,
                      label: "Senha atual",
                      hasHideButton: true,
                    ),
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: "Nova senha",
                      hasHideButton: true,
                    ),
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: "Confirmar senha",
                      hasHideButton: true,
                    ),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Atualizar"),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
