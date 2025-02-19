import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:meta/meta.dart';

part 'accountshow_state.dart';

class AccountshowCubit extends Cubit<AccountshowState> {
  AccountshowCubit() : super(AccountshowInitial());
  late Accountmodels accountmodels;
  Future<String?> getprofile(String uil) async {
    print('yesssssssssddddfdfdfdfdfdfdfss');
    try {
      DocumentSnapshot doc =
          await FirebaseFirestore.instance.collection('users').doc(uil).get();
      print(' FirebaseFirestore.instance.collection,,,,,,,,,,,,,,');
      if (doc.exists) {
        var data = doc.data() as Map<String, dynamic>?;
        // Accountmodels.fromjson(data as Map<String, dynamic>);
        // name = data['name'];
        print(' FirebaseFirestore.instance.collection,,,,,,,yes,,,,,,,');
        accountmodels = Accountmodels(
            email: data!['email'], name: data['name'], phone: data['phone']);
        //  Accountmodels.fromjson(data);
        emit(
          Accountshowsuccess(
            accountmodels: accountmodels,
            // name: accountmodels.name,
            //  email: accountmodels.email,
            //  phone: accountmodels.phone
          ),
        );
      } else {
        print('docis not exites............');
      }
    } catch (e) {
      print(e.toString());
      print('yesssssssssssss');
    }
  }
}
