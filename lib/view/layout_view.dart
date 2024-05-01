import 'package:flutter/material.dart';
import 'package:task1/view/tab_section.dart';
import '../main.dart';
import '../model/app_state_model.dart';

class LayoutView extends StatefulWidget {
  final AppStateModel appState;
  final VoidCallback handleFrontButton;
  final VoidCallback handleBackButton;
  final VoidCallback handleSignInButton;
  final VoidCallback handleNotificationButton;
  final bool mastershow;
  final bool show;

  const LayoutView({
    required this.appState,
    required this.handleFrontButton,
    required this.handleBackButton,
    required this.handleSignInButton,
    required this.handleNotificationButton,
    required this.mastershow,
    required this.show,
  });

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.grey[100],
      child: Stack(children: [
        Positioned(
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.mastershow && !widget.appState.fullscreen)
                  Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextButton(onPressed: () {}, child: Text('MASTER')),
                        ListTile(
                          title: Text('Customer'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Customer';
                              widget.appState.history.add('Customer');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Customer');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Customer')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Supplier'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Supplier';
                              widget.appState.history.add('Supplier');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Supplier');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Supplier')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Ledger'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Ledger';
                              widget.appState.history.add('Ledger');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Ledger');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Ledger')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Item Type'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Item Type';
                              widget.appState.history.add('Item Type');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Item Type');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Item Type')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Item Name'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Item Name';
                              widget.appState.history.add('Item Name');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Item Name');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Item Name')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Stock Opening'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Stock Opening';
                              widget.appState.history.add('Stock Opening');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Stock Opening');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Stock Opening')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Bank Account'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Bank Account';
                              widget.appState.history.add('Bank Account');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Bank Account');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Bank Account')}');
                            });
                          },
                        ),
                        ListTile(
                          title: Text('Loan/Advances'),
                          onTap: () {
                            setState(() {
                              widget.appState.sectionname = 'Loan/Advances';
                              widget.appState.history.add('Loan/Advances');
                              widget.appState.navigationindex = widget.appState.history.indexOf('Loan/Advances');
                              print(
                                  ' history: ${widget.appState.history}, '
                                      'index: ${widget.appState.history.indexOf('Loan/Advances')}');
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (!widget.appState.fullscreen)
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 40,
                          children: [
                            TextButton(
                              onPressed: () {
                                widget.appState.tabshow = true;
                                widget.appState.tabname = 0;
                                setState(() {});
                              },
                              child: Text(
                                'INVOICE',
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                widget.appState.tabshow = true;
                                widget.appState.tabname = 1;
                                setState(() {});
                              },
                              child: Text('ESTIMATES'),
                            ),
                            TextButton(
                              onPressed: () {
                                widget.appState.tabshow = true;
                                widget.appState.tabname = 2;
                                setState(() {});
                              },
                              child: Text('INCOME'),
                            ),
                            TextButton(
                              onPressed: () {
                                widget.appState.tabshow = true;
                                widget.appState.tabname = 3;
                                setState(() {});
                              },
                              child: Text('VOUCHER'),
                            ),
                            TextButton(
                              onPressed: () {
                                widget.appState.tabshow = true;
                                widget.appState.tabname = 4;
                                setState(() {});
                              },
                              child: Text('CASH/BANK'),
                            ),
                            TextButton(
                              onPressed: () {
                                widget.appState.tabshow = true;
                                widget.appState.tabname = 5;
                                setState(() {});
                              },
                              child: Text('PAYROLL'),
                            ),
                          ],
                        ),
                      if (widget.appState.tabshow &&
                          !widget.appState.fullscreen)
                        Center(
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 10,
                            children: [
                              for (var item in widget.appState
                                  .subsections[widget.appState.tabname])
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {

                                      widget.appState.sectionname = item;
                                      widget.appState.history.add(item);
                                      widget.appState.navigationindex = widget.appState.history.indexOf(item);
                                      print(
                                          'item: $item, history: ${widget.appState.history}, '
                                              'index: ${widget.appState.history.indexOf(item)}');
                                      });
                                    },
                                    child: Text(item))
                            ],
                          ),
                        ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[100]),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_back),
                                      highlightColor: Colors.grey[300],
                                      disabledColor: Colors.black45,
                                      onPressed: () {
                                        if (widget.appState.navigationindex !=
                                            0)
                                          widget.appState.navigationindex--;
                                        print(
                                            'navigationindex: ${widget.appState.navigationindex}');
                                        setState(() {});
                                        (widget.appState.navigationindex < 0)
                                            ? null
                                            : widget.handleBackButton();
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[100]),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_forward),
                                      highlightColor: Colors.grey[300],
                                      disabledColor: Colors.grey,
                                      onPressed: () {
                                        if (widget.appState.navigationindex !=
                                            (widget.appState.history.length -
                                                1)) widget.appState.navigationindex++;
                                        print(
                                            'navigationindex: ${widget.appState.navigationindex}');
                                        setState(() {});
                                        (widget.appState.navigationindex >
                                                (widget
                                                    .appState.history.length))
                                            ? null
                                            : widget.handleFrontButton();
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[100]),
                                    child: IconButton(
                                      icon: widget.appState.fullscreen
                                          ? Icon(Icons.fullscreen_exit)
                                          : Icon(Icons.fullscreen),
                                      highlightColor: Colors.grey[300],
                                      disabledColor: Colors.grey,
                                      onPressed: () {
                                        setState(() {
                                          widget.appState.fullscreen =
                                              !widget.appState.fullscreen;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                  child: TabSection(
                                      sectionname:
                                          widget.appState.sectionname)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (widget.show && !widget.appState.fullscreen)
                  Container(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextButton(onPressed: () {}, child: Text('REPORT')),
                        ListTile(title: Text('GST')),
                        ListTile(title: Text('Daybook')),
                        ListTile(title: Text('Stock Details')),
                        ListTile(title: Text('Register')),
                        ListTile(title: Text('Cash Account')),
                        ListTile(title: Text('Bank Account')),
                        ListTile(title: Text('Ledger')),
                        ListTile(title: Text('Duties and Tax')),
                        ListTile(title: Text('Summary')),
                      ],
                    ),
                  ),
                if (widget.show && !widget.appState.fullscreen)
                  Container(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextButton(onPressed: () {}, child: Text('FINAL AC')),
                        ListTile(title: Text('Trading')),
                        ListTile(title: Text('Profit & Loss')),
                        ListTile(title: Text('Trial Balance')),
                        ListTile(title: Text('Balance Sheet')),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 2,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.all(2),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: IconButton(
                  onPressed: widget.handleSignInButton,
                  icon: Icon(Icons.person)),
            ),
          ),
        ),
        Positioned(
          top: 42,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.all(2),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: IconButton(
                icon: Icon(Icons.notifications),
                highlightColor: Colors.grey[300],
                disabledColor: Colors.grey,
                onPressed: () {
                  widget.handleNotificationButton();
                  // Handle back button press
                },
              ),
            ),
          ),
        ),
        if (widget.appState.loginvisible)
          Positioned(
            top: 20,
            right: 60,
            child: Container(
              padding: EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black12, spreadRadius: 10)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12),
                            child: Icon(
                              Icons.person,
                              size: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'Person Name',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('personal_mail_id@gmail.com'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Setting',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.payments_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Payment Subscription',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.password),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Change Password',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    ElevatedButton(
                        style:
                            ButtonStyle(visualDensity: VisualDensity.compact),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.logout),
                            Text('Logout'),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        if (widget.appState.notificationvisible)
          Positioned(
            top: 80,
            right: 60,
            child: Container(
                padding: EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        for (int i = 1; i <= 9; i++)
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black12),
                                      child: Icon(
                                        Icons.notifications,
                                        size: 40,
                                      )),
                                  Text('hello $i'),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          )
                      ]),
                )),
          )
      ])),
    );
  }
}
