import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const Column(
        children: [],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Person person = Person(name: "waseem", age: 20);
            Person person1 = Person(name: "waseem", age: 20);
            print( "first instance hascode is " +person.hashCode.toString());
            print("second instance hascode is "+ person1.hashCode.toString());
            print(person == person1);
          },
          shape:const CircleBorder(),
          backgroundColor: Colors.deepPurple,
          child:const Icon(Icons.add , color: Colors.white,),
        ),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;
const Person({required this.name,required this.age});
  
  @override
  List<Object?> get props => [name,age];
  
}