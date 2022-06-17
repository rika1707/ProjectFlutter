import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
 const Profile({Key? key}) : super(key: key);

  @override
  State <Profile> createState() =>  ProfileState();
}

class  ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Column(
          children: const <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
             child: FadeInImage(
              placeholder: AssetImage('assets/images/loading.gif'),
              image: NetworkImage('https://www.creativosonline.org/wp-content/uploads/2010/05/creativosonline_crear_avatar_profesional.jpg'),
             ),
           ),
           SizedBox(
             height: 10,
           ),
            Text('Nombres: Ricardo Enrique', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Apellidos: Jaramillo Acevedo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Telefono: 3046735678', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Correo: rjaramillo@lsv-tech.com', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Profesion: Ingeniro de Sistemas', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            
          ],
        ),
      ),
    );
  }
}