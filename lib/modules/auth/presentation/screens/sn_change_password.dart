// import 'package:mind_game/core/utils/input_field_validator.dart';
// import 'package:mind_game/core/widgets/w_app_button.dart';
// import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
// import 'package:mind_game/modules/auth/view_model/cubit/auth_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';

// class SNChangePassword extends StatelessWidget {
//   SNChangePassword({super.key});

//   final AuthCubit cubit = Modular.get<AuthCubit>();
//   @override
//   Widget build(BuildContext context) {
//     return WSharedScaffold(
//       body: Form(
//         key: cubit.formChangePassword.formKey,
//         child: Column(
//           children: [
//             WSharedInput(
//               textEditingController: cubit.formChangePassword.currentPasswordController,
//               hint: 'Current Password',
//               isPassword: true,
//               prefixIconWidget: Icon(
//                 Icons.lock_outline_rounded,
//                 color: context.theme.colorScheme.naturalColor400,
//               ),
//               validator: (value) => InputFieldValidator.isInputEmpty(
//                 fieldName: 'Password',
//                 value: value ?? '',
//                 isPassword: true,
//               ),
//             ),
//             16.createVerticalGap(),
//             WSharedInput(
//               textEditingController: cubit.formChangePassword.newPasswordController,
//               hint: 'New Password',
//               isPassword: true,
//               prefixIconWidget: Icon(
//                 Icons.lock_outline_rounded,
//                 color: context.theme.colorScheme.naturalColor400,
//               ),
//               validator: (value) => InputFieldValidator.isInputEmpty(
//                 fieldName: 'Password',
//                 value: value ?? '',
//                 isPassword: true,
//               ),
//             ),
//             16.createVerticalGap(),
//             WSharedInput(
//               textEditingController: cubit.formChangePassword.confirmNewPasswordController,
//               hint: 'Confirm New Password',
//               isPassword: true,
//               prefixIconWidget: Icon(
//                 Icons.lock_outline_rounded,
//                 color: context.theme.colorScheme.naturalColor400,
//               ),
//               validator: (value) => InputFieldValidator.isInputEmpty(
//                 fieldName: 'Password',
//                 value: value ?? '',
//                 isPassword: true,
//                 passwordConfirmation: cubit.formChangePassword.newPasswordController.text,
//               ),
//             ),
//             64.createVerticalGap(),
//             WAppButton(
//               title: 'Change Password',
//               onTap: () async {
//                 await cubit.changePassword();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
