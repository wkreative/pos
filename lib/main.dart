import 'package:flutter/material.dart';
import 'package:pos/PosRes.dart';

import 'dart:convert';
import 'dart:developer';

import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ValorScreen(),
    );
  }
}

class ValorScreen extends StatefulWidget {
  const ValorScreen({super.key});

  @override
  State<ValorScreen> createState() => _ValorScreenState();
}

class _ValorScreenState extends State<ValorScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController ipAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: ipAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '192.168.0.0',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            log("------ipAddress----" +
                                ipAddress.text.toString());
                            getConnected(ipAddress.text.toString());
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getConnected(String url) async {
    try {
      final wsUrl = Uri.parse("ws://" + url + ":5000");
      //final wsUrl = Uri.parse("wss://ws-feed.pro.coinbase.com");
      final channel = WebSocketChannel.connect(wsUrl);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Connecting...')),
      );
      await channel.ready;

      /*     log("onErroronError---$error"
            ..toString());
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                  error.toString(),
                  selectionColor: Colors.white,
                ),
                backgroundColor: Colors.red),
          );*/
      channel.sink.add(jsonEncode({
        "TRAN_MODE": "1",
        "TRAN_CODE": "1",
        "AMOUNT": "500",
        "TIP_ENTRY": "1",
        "SIGNATURE": "1",
        "PAPER_RECEIPT": "0",
        "MOBILE_ENTRY": "1",
        "MOBILE_NUMBER": "1234567890",
        "VAS_LABEL1": "INVOICE_NO",
        "VAS_DATA1": "12345",
        "VAS_LABEL2": "SERIAL_NO",
        "VAS_DATA2": "987654321"
      }));
      channel.stream.listen((message) {
        log("WebSocketChannelWebSocketChannel" + message
          ..toString());

        var data = PosRes.fromJson(jsonDecode(message));
        if (data.code != null && data.code == "0") {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                  message.toString(),
                  selectionColor: Colors.white,
                ),
                backgroundColor: Colors.green),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                  message.toString(),
                  selectionColor: Colors.white,
                ),
                backgroundColor: Colors.red),
          );
        }
      }, onError: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                "Something Went Wrong",
                selectionColor: Colors.white,
              ),
              backgroundColor: Colors.red),
        );
      });
    } catch (e) {
      log("WebSocketChannelWebSocketChannel$e");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
              "Something Went Wrong",
              selectionColor: Colors.white,
            ),
            backgroundColor: Colors.red),
      );
    }
  }
}
