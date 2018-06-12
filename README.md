# README


Felipe Gomez

Instrucciones: cuando se hace funcionar la pagina por primera vez se debe hacer primero db:migrate y despues db:seed.
La cuenta de administrador tiene como email: admin@gmail.com y su clave es admin123, esta cuenta es la que se carga al hacer rails db:seed

Fallas:
- los projectos incluidos como seeds no tienen imagenes cuando se cargan. Uno debe agregarselas
cuando se entra como administrador ( que ademas es el dueño de esos proyectos)
-  hay listas de obetos que no siempre se caragn de forma correcta, se debe recargar la pagina para que se arregle, esto pasa principalmente con la categorias y con las promise en los projects
- no se pudo acceder mediante facebook por un error que no se suo como arreglar
- se envia un email al hacer funding, pero no se logro valiadar la accion mediante este. Para que se pudiera seguir con un flujo "normal", se elimino este requerimeinto, por lo que no es requerida la confirmacion para poder hacer el financiamiento.





