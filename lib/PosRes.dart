/// STATE : "0"
/// SERIAL_NO : "125192037342"
/// TRAN_TYPE : "Credit"
/// TRAN_METHOD : "Sale"
/// AMOUNT : "1000"
/// TIP_AMOUNT : "100"
/// PARTIAL : "0"
/// SURCHARGE_AMOUNT : "5"
/// MASKED_PAN : "4111 **** **** 1111"
/// ENTRY_MODE : "SWIPE"
/// EXPIRY_DATE : "2512"
/// RRN : "123456789012"
/// CARDHOLDER_NAME : "FDMS USA CARD/VISA"
/// CODE : "RA1234"
/// AUTH_RSP_TEXT : "SUCCESS"
/// DATE : "11032021 15:00:00"
/// TRAN_NO : "1"
/// BATCH_NO : "1"
/// ISSUER : "VISA"

class PosRes {
  PosRes({
      String? state, 
      String? serialno, 
      String? trantype, 
      String? tranmethod, 
      String? amount, 
      String? tipamount, 
      String? partial, 
      String? surchargeamount, 
      String? maskedpan, 
      String? entrymode, 
      String? expirydate, 
      String? rrn, 
      String? cardholdername, 
      String? code, 
      String? authrsptext, 
      String? date, 
      String? tranno, 
      String? batchno, 
      String? issuer,}){
    _state = state;
    _serialno = serialno;
    _trantype = trantype;
    _tranmethod = tranmethod;
    _amount = amount;
    _tipamount = tipamount;
    _partial = partial;
    _surchargeamount = surchargeamount;
    _maskedpan = maskedpan;
    _entrymode = entrymode;
    _expirydate = expirydate;
    _rrn = rrn;
    _cardholdername = cardholdername;
    _code = code;
    _authrsptext = authrsptext;
    _date = date;
    _tranno = tranno;
    _batchno = batchno;
    _issuer = issuer;
}

  PosRes.fromJson(dynamic json) {
    _state = json['STATE'];
    _serialno = json['SERIAL_NO'];
    _trantype = json['TRAN_TYPE'];
    _tranmethod = json['TRAN_METHOD'];
    _amount = json['AMOUNT'];
    _tipamount = json['TIP_AMOUNT'];
    _partial = json['PARTIAL'];
    _surchargeamount = json['SURCHARGE_AMOUNT'];
    _maskedpan = json['MASKED_PAN'];
    _entrymode = json['ENTRY_MODE'];
    _expirydate = json['EXPIRY_DATE'];
    _rrn = json['RRN'];
    _cardholdername = json['CARDHOLDER_NAME'];
    _code = json['CODE'];
    _authrsptext = json['AUTH_RSP_TEXT'];
    _date = json['DATE'];
    _tranno = json['TRAN_NO'];
    _batchno = json['BATCH_NO'];
    _issuer = json['ISSUER'];
  }
  String? _state;
  String? _serialno;
  String? _trantype;
  String? _tranmethod;
  String? _amount;
  String? _tipamount;
  String? _partial;
  String? _surchargeamount;
  String? _maskedpan;
  String? _entrymode;
  String? _expirydate;
  String? _rrn;
  String? _cardholdername;
  String? _code;
  String? _authrsptext;
  String? _date;
  String? _tranno;
  String? _batchno;
  String? _issuer;
PosRes copyWith({  String? state,
  String? serialno,
  String? trantype,
  String? tranmethod,
  String? amount,
  String? tipamount,
  String? partial,
  String? surchargeamount,
  String? maskedpan,
  String? entrymode,
  String? expirydate,
  String? rrn,
  String? cardholdername,
  String? code,
  String? authrsptext,
  String? date,
  String? tranno,
  String? batchno,
  String? issuer,
}) => PosRes(  state: state ?? _state,
  serialno: serialno ?? _serialno,
  trantype: trantype ?? _trantype,
  tranmethod: tranmethod ?? _tranmethod,
  amount: amount ?? _amount,
  tipamount: tipamount ?? _tipamount,
  partial: partial ?? _partial,
  surchargeamount: surchargeamount ?? _surchargeamount,
  maskedpan: maskedpan ?? _maskedpan,
  entrymode: entrymode ?? _entrymode,
  expirydate: expirydate ?? _expirydate,
  rrn: rrn ?? _rrn,
  cardholdername: cardholdername ?? _cardholdername,
  code: code ?? _code,
  authrsptext: authrsptext ?? _authrsptext,
  date: date ?? _date,
  tranno: tranno ?? _tranno,
  batchno: batchno ?? _batchno,
  issuer: issuer ?? _issuer,
);
  String? get state => _state;
  String? get serialno => _serialno;
  String? get trantype => _trantype;
  String? get tranmethod => _tranmethod;
  String? get amount => _amount;
  String? get tipamount => _tipamount;
  String? get partial => _partial;
  String? get surchargeamount => _surchargeamount;
  String? get maskedpan => _maskedpan;
  String? get entrymode => _entrymode;
  String? get expirydate => _expirydate;
  String? get rrn => _rrn;
  String? get cardholdername => _cardholdername;
  String? get code => _code;
  String? get authrsptext => _authrsptext;
  String? get date => _date;
  String? get tranno => _tranno;
  String? get batchno => _batchno;
  String? get issuer => _issuer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['STATE'] = _state;
    map['SERIAL_NO'] = _serialno;
    map['TRAN_TYPE'] = _trantype;
    map['TRAN_METHOD'] = _tranmethod;
    map['AMOUNT'] = _amount;
    map['TIP_AMOUNT'] = _tipamount;
    map['PARTIAL'] = _partial;
    map['SURCHARGE_AMOUNT'] = _surchargeamount;
    map['MASKED_PAN'] = _maskedpan;
    map['ENTRY_MODE'] = _entrymode;
    map['EXPIRY_DATE'] = _expirydate;
    map['RRN'] = _rrn;
    map['CARDHOLDER_NAME'] = _cardholdername;
    map['CODE'] = _code;
    map['AUTH_RSP_TEXT'] = _authrsptext;
    map['DATE'] = _date;
    map['TRAN_NO'] = _tranno;
    map['BATCH_NO'] = _batchno;
    map['ISSUER'] = _issuer;
    return map;
  }

}