import 'package:examen_col/widgets/custmon_text_from_field.dart';
import 'package:flutter/material.dart';

class SigninScreemLco extends StatelessWidget {
  const SigninScreemLco({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
      final myFormKey = GlobalKey<FormState>();
         final Map<String, String> formValues = {
      'usuario': 'Lorena',
      'contraseña' : 'lorena',
    };
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Form(child: Column(
          children: [
             customTextFormField(
                    hintText: 'Nombre',
                    labelText: 'Nombre del usuario',
                    helperText: 'Solo Letras',
                    icon: Icons.verified_outlined,
                    suffixIcon: Icons.person_2_rounded,
                    obscureText: false,
                    formProperty: 'nombre',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   customTextFormField(
                    hintText: 'Contraseña',
                    labelText: 'Contraseña del usuario',
                    icon: Icons.password_rounded,
                    obscureText: true,
                    formProperty: 'Constraseña',
                    formValues: formValues,
                  ),
                    const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // desactivar el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Sign in'))),
                  )
          ],
         )),
  
      ),
    );
  }
}
