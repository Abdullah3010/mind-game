// import 'package:mind_game/core/assets/assets.gen.dart';
// import 'package:mind_game/core/extension/color_extension.dart';
// import 'package:mind_game/core/extension/context_extension.dart';
// import 'package:mind_game/core/extension/int_extension.dart';
// import 'package:mind_game/core/extension/text_theme_extension.dart';
// import 'package:mind_game/core/utils/input_field_validator.dart';
// import 'package:mind_game/core/widgets/w_app_button.dart';
// import 'package:mind_game/core/widgets/w_shared_input.dart';
// import 'package:mind_game/core/widgets/w_shared_scaffold.dart';
// import 'package:mind_game/modules/auth/view_model/cubit/auth_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SNForgetPassword extends StatelessWidget {
//   SNForgetPassword({super.key});

//   final AuthCubit cubit = Modular.get<AuthCubit>();

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthCubit, AuthState>(
//       bloc: cubit,
//       listener: (context, state) {},
//       builder: (context, state) {
//         return WSharedScaffold(
//           withBackButton: true,
//           body: Form(
//             key: cubit.formForgetPassword.formKey,
//             child: Column(
//               children: [
//                 16.createVerticalGap(),
//                 Image.asset(
//                   Assets.icons.appLogoPng.path,
//                   width: 236.w,
//                   height: 74.h,
//                 ),
//                 22.createVerticalGap(),
//                 Text(
//                   'Welcome back!',
//                   style: context.theme.textTheme.titleSemiBold_18.copyWith(
//                     color: context.theme.colorScheme.primaryColor300,
//                   ),
//                 ),
//                 22.createVerticalGap(),
//                 Text(
//                   'Enter your registered email below to receive password reset instruction',
//                   style: context.theme.textTheme.bodyRegular_14.copyWith(
//                     color: context.theme.colorScheme.naturalColor0,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 34.createVerticalGap(),
//                 WSharedInput(
//                   textEditingController: cubit.formForgetPassword.emailController,
//                   hint: 'Email',
//                   textInputType: TextInputType.emailAddress,
//                   prefixIconWidget: Icon(
//                     Icons.email_outlined,
//                     color: context.theme.colorScheme.naturalColor400,
//                   ),
//                   validator: (value) => InputFieldValidator.isEmailValid(
//                     email: value ?? '',
//                     isRequired: true,
//                   ),
//                 ),
//                 34.createVerticalGap(),
//                 WAppButton(
//                   title: 'Submit',
//                   onTap: () async {
//                     await cubit.forgetPassword();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
