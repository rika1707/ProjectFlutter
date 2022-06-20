import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
           Container(
            padding: const EdgeInsets.only(bottom: 3.0),
            margin: const EdgeInsets.only(bottom: 3.0),
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo_perfil.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 3.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/avatar.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const Text('Ricardo Jaramillo',
                style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 248, 248, 242)),),
              ],
              ),
          ),
         Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: const [
              Text('Descripcion',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
            
            Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
            textAlign: TextAlign.justify,),
             SizedBox(
                height: 10,
              ),
            Text('Telefono:', 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('+569 876 543 210', textAlign: TextAlign.center,),
             SizedBox(
                height: 10,
              ),
            Text('Correo:',
            textAlign: TextAlign.center,
             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('rjaramillo@lsv-tech.com', textAlign: TextAlign.center,),
             SizedBox(
                height: 10,
              ),
            Text('Profesion: ',
            textAlign: TextAlign.center,
             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text('Desarrollador Web', textAlign: TextAlign.center,),
            ],
          ),
         ),
         
        ],
      ),
    );

    /* Container(
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
    ); */
  }
}
