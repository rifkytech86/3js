[create function]
  void -> no return 
  ex-> 
// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
void main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}


[variable]
```var name = "bob"```
```Object name = "bob"```
```String name = "bob"```

default value variable is NULL 

safety varibale using => 
```int lineCount = 0```

no initial variable => int lineCount 

if variabel set before used use late: 
```late String desc```

if not change value use final or const cant change value:  
```
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
```


Type data support language: 

- Number
- String 
- Booleans
- List => is array 
- Sets
- Maps => same like array associates
- Runes
- Symbols
- NULL 

Type Special Role 
- Object
- Enum
- Future => async 
- Stream 
- Iterable => for loop in sync
- Never => used for function throw error 
- dynamic
- void


[LIST]
- var list = [1, 2, 3];
- list have type list<int> => if int set 
- put list to another list => 
  ```var list = [1, 2, 3];
    var list2 = [0, ...list];
    assert(list2.length == 4)```

- if put list worry might null set ? 
  ```var list = [1, 2, 3];
    var list2 = [0, ...?list];
    assert(list2.length == 4)```

- list with condition if/for etc..  you can allow add condrion inside list

  ```var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];```
  ```var listOfInts = [1, 2, 3];
   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];```
- 

[SETS]
- var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
- intial sets => test{}
- var names = <String>{}; 
- add to sets using => 
  - add()
    ```
        var elements = <String>{};
        elements.add('fluorine');
        elements.addAll(halogens);
    ```
    - addAll()
      ```
       var elements = <String>{};
        elements.add('fluorine');
        elements.addAll(halogens);
        assert(elements.length == 5);
      ```
 - get length => elements.length 

[MAP]
- example 
  ```
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  ```
- create some object on MAP 
  ```
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  ```
- once get key not found will get is NULL 


[FUNCTION]
- with type return recommend by dart
  ```
  bool isNoble(int atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }
  ```
- no with type 
  ```
  isNoble(atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }
  ```
- function with one expresion / short hand create function 
``` bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null; ``` 

- function with parameter with parameter optional using ? 
  ```void enableFlags({bool? bold, bool? hidden})`` 
  // call function 
  enableFlags(bold: true, hidden: false);```
- function with parameter mandatory/required 
  ```
  const Scrollbar({super.key, required Widget child});
  ```
- function with option parameter on sets, following parameter latest/3 
  ```
  String say(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }
  // call 
  say('Bob', 'Howdy')
  ```
- function default parameter value 
  ```
  void enableFlags({bool bold = false, bool hidden = false}) {...}
  enableFlags(bold: true);
  ```
  ```
    String say(String from, String msg, [String device = 'carrier pigeon']) {
      var result = '$from says $msg with a $device';
      return result;
    }
  ```
 - function with parameter pass list or map 
   ```
   void doStuff(
      {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
    print('list:  $list');
    print('gifts: $gifts');
  }
  ```
- function as a parameter 
    ```
    void printElement(int element) {
      print(element);
    }

    var list = [1, 2, 3];

    // Pass printElement as a parameter.
    list.forEach(printElement);
    ```
- Anonymous function 
  ```
  ([[Type] param1[, …]]) {
    codeBlock;
  };
  ```
  ```
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
  ```
  shorthand 
  ```
  list.forEach((item) => print('${list.indexOf(item)}: $item'));
  ``` 
- Nasted function 
    ```
    void main() {
      var insideMain = true;

      void myFunction() {
        var insideFunction = true;

        void nestedFunction() {
          var insideNestedFunction = true;

          assert(topLevel);
          assert(insideMain);
          assert(insideFunction);
          assert(insideNestedFunction);
        }
      }
    }
    ```
- function return a function 
  ```
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }
  ```
  
  
[OPERATOR]
- unary postfix => 	expr++ , expr--, (), []    ?[]    .    ?.    !


[Cascade notation]
- will set return a object 
  ```
  var paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
  ```
  // above  same like bello 
  ```
  var paint = Paint();
  paint.color = Colors.black;
  paint.strokeCap = StrokeCap.round;
  paint.strokeWidth = 5.0;
  ```
  
- handling null 
  ```
  querySelector('#confirm') // Get an object.
    ?..text = 'Confirm' // Use its members.
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'));
  ```
// above same liek below 
  ```
  var button = querySelector('#confirm');
  button?.text = 'Confirm';
  button?.classes.add('important');
  button?.onClick.listen((e) => window.alert('Confirmed!'))
  ```
  
 [THROW]
 - ```throw FormatException('Expected at least 1 section');```
  
