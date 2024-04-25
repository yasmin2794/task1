import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:task1/Widgets/attendance.dart';
import 'package:task1/Widgets/cash.dart';
import 'package:task1/Widgets/contra.dart';
import 'package:task1/Widgets/debit_note.dart';
import 'package:task1/Widgets/delivery_chellan.dart';
import 'package:task1/Widgets/employee.dart';
import 'package:task1/Widgets/esi.dart';
import 'package:task1/Widgets/estimates.dart';
import 'package:task1/Widgets/income.dart';
import 'package:task1/Widgets/item_name.dart';
import 'package:task1/Widgets/item_type.dart';
import 'package:task1/Widgets/journal.dart';
import 'package:task1/Widgets/loan_advances.dart';
import 'package:task1/Widgets/pro_forma.dart';
import 'package:task1/Widgets/purchase_invoice.dart';
import 'package:task1/Widgets/purchase_order.dart';
import 'package:task1/Widgets/receipt.dart';
import 'package:task1/Widgets/salary.dart';
import 'package:task1/Widgets/sales_invoice.dart';
import 'package:task1/Widgets/stock_opening.dart';
import 'Widgets/bank.dart';
import 'Widgets/bank_account.dart';
import 'Widgets/credit_note.dart';
import 'Widgets/customer.dart';
import 'Widgets/ledger.dart';
import 'Widgets/payment.dart';
import 'Widgets/pf.dart';
import 'Widgets/supplier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool tab = false;
  bool mastershow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 800) {
              mastershow = false;
              tab = false;
              return Layout(mastershow: mastershow, show: tab);
            } else if (constraints.maxWidth < 1200) {
              mastershow = true;
              tab = false;
              return Layout(mastershow: mastershow, show: tab);
            } else {
              mastershow = true;
              tab = true;
              return Layout(mastershow: mastershow, show: tab);
            }
          },
        ),
      ),
    );
  }
}

class Layout extends StatefulWidget {
  Layout({required this.show, required this.mastershow});

  bool show;
  bool mastershow;

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  bool tabshow = false;
  int tabname = 0;
  int subsection = 0;
  bool fullscreen = false;
  bool loginvisible = false;
  bool notificationvisible = false;

  final List<Widget> sections = [
    Customer(),
    Supplier(),
    Ledger(),
    ItemType(),
    ItemName(),
    StockOpening(),
    BankAccount(),
    LoanAdvances(),
    SalesInvoice(),
    DeliveryChellan(),
    CreditNote(),
    PurchaseInvoice(),
    DebitNote(),
    ProForma(),
    Estimates(),
    PurchaseOrder(),
    Income(),
    Payment(),
    Receipt(),
    Journal(),
    Contra(),
    Cash(),
    Bank(),
    Employee(),
    Attendance(),
    Salary(),
    PF(),
    ESI(),
  ];

  final List<List<String>> subsections = [
    [
      'Sales Invoice',
      'Delivery Chellan',
      'Credit Note(Sales Return)',
      'Purchase Invoice',
      'Debit Note(Purchase Return)'
    ],
    ['Pro-forma', 'Estimates', 'Purchase Order'],
    ['Income'],
    ['Payment', 'Receipt', 'Journal(Expense)', 'Contra'],
    ['Cash', 'Bank'],
    ['Employee', 'Attendance', 'Salary', 'PF', 'ESI']
  ];

  void _handleFrontButton() {
    setState(() {
      subsection =
          subsection < (sections.length - 1) ? subsection + 1 : subsection;
    });
  }

  void _handleBackButton() {
    setState(() {
      subsection = (subsection > 0) ? subsection - 1 : subsection;
    });
  }

  void _handleSignInButton() {
    loginvisible = !loginvisible;
    setState(() {});
    //Implement your sign-in logic here
    print('Sign in button pressed');
  }

  void _handleNotificationButton() {
    notificationvisible = !notificationvisible;
    setState(() {});
    //Implement your notification logic here
    print('Notification button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Stack(
        children: [
          Positioned(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.mastershow && !fullscreen)
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
                                subsection = 0;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Supplier'),
                            onTap: () {
                              setState(() {
                                subsection = 1;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Ledger'),
                            onTap: () {
                              setState(() {
                                subsection = 2;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Item Type'),
                            onTap: () {
                              setState(() {
                                subsection = 3;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Item Name'),
                            onTap: () {
                              setState(() {
                                subsection = 4;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Stock Opening'),
                            onTap: () {
                              setState(() {
                                subsection = 5;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Bank Account'),
                            onTap: () {
                              setState(() {
                                subsection = 6;
                              });
                            },
                          ),
                          ListTile(
                            title: Text('Loan/Advances'),
                            onTap: () {
                              setState(() {
                                subsection = 7;
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
                        if(!fullscreen)
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 40,
                          children: [
                            TextButton(
                              onPressed: () {
                                tabshow = true;
                                tabname = 0;
                                setState(() {});
                              },
                              child: Text(
                                'INVOICE',
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                tabshow = true;
                                tabname = 1;
                                setState(() {});
                              },
                              child: Text('ESTIMATES'),
                            ),
                            TextButton(
                              onPressed: () {
                                tabshow = true;
                                tabname = 2;
                                setState(() {});
                              },
                              child: Text('INCOME'),
                            ),
                            TextButton(
                              onPressed: () {
                                tabshow = true;
                                tabname = 3;
                                setState(() {});
                              },
                              child: Text('VOUCHER'),
                            ),
                            TextButton(
                              onPressed: () {
                                tabshow = true;
                                tabname = 4;
                                setState(() {});
                              },
                              child: Text('CASH/BANK'),
                            ),
                            TextButton(
                              onPressed: () {
                                tabshow = true;
                                tabname = 5;
                                setState(() {});
                              },
                              child: Text('PAYROLL'),
                            ),
                            // Add more buttons as needed
                          ],
                        ),
                        if (tabshow && !fullscreen)
                          Center(
                            child: Wrap(
                              spacing: 20,
                              runSpacing: 10,
                              children: [
                                for (var item in subsections[tabname])
                                  ElevatedButton(
                                      onPressed: () {
                                        if (item == 'Sales Invoice')
                                          subsection = 8;
                                        if (item == 'Delivery Chellan')
                                          subsection = 9;
                                        if (item == 'Credit Note(Sales Return)')
                                          subsection = 10;
                                        if (item == 'Purchase Invoice')
                                          subsection = 11;
                                        if (item ==
                                            'Debit Note(Purchase Return)')
                                          subsection = 12;
                                        if (item == 'Pro-forma')
                                          subsection = 13;
                                        if (item == 'Estimates')
                                          subsection = 14;
                                        if (item == 'Purchase Order')
                                          subsection = 15;
                                        if (item == 'Income') subsection = 16;
                                        if (item == 'Payment') subsection = 17;
                                        if (item == 'Receipt') subsection = 18;
                                        if (item == 'Journal(Expense)')
                                          subsection = 19;
                                        if (item == 'Contra') subsection = 20;
                                        if (item == 'Cash') subsection = 21;
                                        if (item == 'Bank') subsection = 22;
                                        if (item == 'Employee') subsection = 23;
                                        if (item == 'Attendance')
                                          subsection = 24;
                                        if (item == 'Salary') subsection = 25;
                                        if (item == 'PF') subsection = 26;
                                        if (item == 'ESI') subsection = 27;
                                        setState(() {});
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
                                        disabledColor: Colors.grey,
                                        onPressed: () {
                                          _handleBackButton();
                                          // Handle back button press
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
                                          _handleFrontButton();
                                          // Handle forward button press
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
                                        icon: fullscreen? Icon(Icons.fullscreen_exit):Icon(Icons.fullscreen),
                                        highlightColor: Colors.grey[300],
                                        disabledColor: Colors.grey,
                                        onPressed: () {
                                          setState(() {
                                            fullscreen= !fullscreen;
                                          });
                                          // Handle back button press
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Center(child: sections[subsection]),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.show && !fullscreen)
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
                  if (widget.show && !fullscreen)
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
                    onPressed: _handleSignInButton, icon: Icon(Icons.person)),
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
                    _handleNotificationButton();
                    // Handle back button press
                  },
                ),
              ),
            ),
          ),
          if (loginvisible)
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
          if(notificationvisible)
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
                            for(int i=1; i<=9; i++)
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
                                  SizedBox(height: 5,),
                                ],
                              ),
                          ]
                      )
                  )
              )
          ),
        ],
      ),
    );
  }
}
