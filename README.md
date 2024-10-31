# StarWarsDemoACAMD

La aplicación de este repositorio está basada en el trabajo que [Julio César Fernández Múñoz](https://x.com/jcfmunoz) (director de [Apple Coding Academy](https://acoding.academy)) y [Brais Moure](https://moure.dev) realizaron durante un directo en Twitch resubido, posteriormente, a YouTube.

- Vídeo: [Crea tu primera App iOS con SWIFT 6, SwiftUI y Swift Testing](https://www.youtube.com/watch?v=4JlSxaIWRJ0)
- Repositorio: [StarWarsDemo-MoureDev-Masterclass](https://github.com/applecodingacademy/StarWarsDemo-MoureDev-Masterclass)

No hay apenas diferencia con el repositorio original; el resultado final, la aplicación, ejecutándose sobre el simulador y el terminal es el mismo. Tan solo cambian algunas decisiones a nivel de desarrollo y código:

- Mayor número de _unit tests_ para lograr un _coverage_ del 100 % y aumentar el número de ejemplos.
- No se define un _protocol_ para las implementaciones del repositorio que obtendrá la información de los personajes. Solo hay una implementación y el nombre del fichero a leer es una dependencia explícita durante su instanciación.
- Añade una estructura de directorios y ficheros para organizar el proyecto. Siendo un ejemplo pequeño, no es necesario, pero sirve como punto de partida.
