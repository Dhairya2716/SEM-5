import './Utils/import_export.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final SignUpController _controller = SignUpController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobilenumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            APPBAR_TITLE,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: LABEL_NAME,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: LABEL_EMAIL,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _mobilenumberController,
              decoration: const InputDecoration(
                labelText: LABEL_MOBILE_NUMBER,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: LABEL_PASSWORD,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _confirmpasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: LABEL_CONFIRM_PASSWORD,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _controller.addUser(
                      _nameController.text,
                      _emailController.text,
                      _mobilenumberController.text,
                      _passwordController.text,
                      _confirmpasswordController.text,
                    );
                  });

                  _nameController.clear();
                  _emailController.clear();
                  _mobilenumberController.clear();
                  _passwordController.clear();
                  _confirmpasswordController.clear();

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('User Add successfully')),
                  );
                },
                child: Text(SIGN_UP)),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Registered User',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _controller.getUsers().length,
              itemBuilder: (context, index){
                final user = _controller.getUsers()[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${user[SIGN_UP_NAME]}'),
                        Text('Email: ${user[SIGN_UP_EMAIL]}'),
                        Text('Mobile number: ${user[SIGN_UP_MOBILE_NUMBER]}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
