void main() {
	/* List <String> names = ["Mohamed", "Ahmed", "Omar", "Sara"]; */
	/* print(names.length);
	print(names.first);
	print(names.last);
	print(names.isEmpty);
	print(names.isNotEmpty);
	print(names.reversed); */

	/* for (var i = names.length - 1; i > -1; i++) {
		print(names[i]);
	} */

	/* for (String name in names) {
		print(name);
	} */

	/* names.forEach((String name) { 
		print(name);
	}); */

	/* int i = 0;
	while(i < 4) {
		print(names[i]);
		i++;
	} */

	/* i = 0;
	do {
		print(names[i]);
		i++;
	} while (i < 4); */

  /* List <int> counter= [1, 2, 51, 1, 5, 4, 2, 85, 2, 2, 1, 5, 12, 1];

  
  String y = "omar";
  int count1 = 0;
  int count2 = 0;
  int countE = 0;
  int countO = 0;
  for (int num in counter) {
    if (num == 1) {
      count1++;
      countO++;
    } else if (num == 2) {
      count2++;
      countE++;
    } else {
        if (num.isEven) {
          countE++;
        } else {
          countO++;
        }
    }
  }

  print("1 occured " + count1.toString() + " times");
  print("2 occured " + count2.toString() + " times");
  print("Evens occured " + countE.toString() + " times");
  print("Odds occured " + countO.toString() + " times"); */

  /* List<List<List<int>>> L1 = [[[1,2,3], [4,5,6]], [[7,8,9], [10,11,12]]];

  L1.forEach((list1) {
    list1.forEach((list2) {
      list2.forEach((element) {
        print(element);
      });
    });
  }); */

  /* Map<dynamic, dynamic> myData = {
    "username" : "Sawy" ,
    "age" : 19 ,
    "isActive" : true ,
    "Address" : "Cairo"
  };
  print(myData["username"]);
  String name = myData["username"];
  print("test $name"); */

  /* List<Map<String,dynamic>> users = [
    {
      "username" : "Sawy" , 
      "address" : "Cairo" ,
      "age" : 19 , 
      "email" : "test@gmail.com"
    } ,
    {
      "username" : "Mina" , 
      "address" : "Cairo" ,
      "age" : 23 , 
      "email" : "trial@gmail.com"
    } , 
    {
      "username" : "Ahmed" , 
      "address" : "Cairo" ,
      "age" : 22 , 
      "email" : "try@gmail.com"
    }
  ];

  users.forEach((map) {
    print(map["username"]);
  }); */

  /* int? age;
  print(age); */
}