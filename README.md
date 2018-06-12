# README


Felipe Gomez

Instruction: in order to run the page for the first time, it is necesary to do first db:migrate and then db:seed.
The administrator account  has as email: admin@gmail.com y his password is admin123. This acount is loaded when doing rails db:seed.

Errors:
- The projects loaded as seeds has no images, they have to be uploaded by the administrator, who is the owner of those projects
- There are lists of objects that doesnt load corectly at the first time, it is necesary to refresh the page to corect it. This happens usualy on categories and in the promises of a project.
- An email is send when funding, but I wasnt able to implement the validation trough it. In order to allow the normal progres of the page, this last feature was eliminated, so it is not necesary to confirm the transaction using the email, but still an email will be recieved as notification.
- Is not posible to sign in using facebbok, due to an unknown error, which i wasnt able to fix.


Instrucciones: cuando se hace funcionar la pagina por primera vez se debe hacer primero db:migrate y despues db:seed.
La cuenta de administrador tiene como email: admin@gmail.com y su clave es admin123, esta cuenta es la que se carga al hacer rails db:seed

Fallas:
- los projectos incluidos como seeds no tienen imagenes cuando se cargan. Uno debe agregarselas
cuando se entra como administrador ( que ademas es el dueño de esos proyectos)
-  hay listas de obetos que no siempre se caragn de forma correcta, se debe recargar la pagina para que se arregle, esto pasa principalmente con la categorias y con las promise en los projects
- no se pudo acceder mediante facebook por un error que no se suo como arreglar
- se envia un email al hacer funding, pero no se logro valiadar la accion mediante este. Para que se pudiera seguir con un flujo "normal", se elimino este requerimeinto, por lo que no es requerida la confirmacion para poder hacer el financiamiento, pero igual se resibira un mail como notificacion.





