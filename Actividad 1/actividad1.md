# Tipos de kernel y sus diferencias

### 1. Kernel monolítico.
 * Es el tipo de kernel más antiguo y simple.
 * Todas las funciones del kernel se ejecutan en el espacio privilegiado del sistema (modo kernel).
 * Tiene acceso directo a todas las estructuras y recursos del sistema.
 * Es menos seguro, ya que un fallo en un componente del kernel puede afectar todo el sistema.

Ejemplos: Linux, FreeBSD.

### 2. Kernel microkernel.
 * Es más modular que el kernel monolítico y se esfuerza por mantener solo las funciones esenciales en el espacio privilegiado (modo kernel).
 * Las funciones no esenciales, como los controladores de dispositivos, se ejecutan en el espacio de usuario (modo usuario).
 * Favorece la escalabilidad y la robustez del sistema, ya que los fallos en módulos específicos no afectan al resto del kernel.

Ejemplos: MINIX, QNX.

### 3. Kernel híbrido.
* Combina características de los kernels monolíticos y microkernels.
* Algunas partes del kernel se ejecutan en el espacio privilegiado (modo kernel), mientras que otras partes se ejecutan en el espacio de usuario (modo usuario).
* Proporciona un equilibrio entre el rendimiento del kernel monolítico y la robustez del microkernel.

Ejemplo: Windows NT (Windows 2000, XP, Vista, 7, 8, 10, 11).

### 4. Kernel exokernel.

* Se centra en proporcionar un nivel mínimo de abstracción sobre el hardware.
* Permite a las aplicaciones controlar directamente los recursos del hardware.
* La mayoría de las operaciones del kernel se realizan en el espacio de usuario.
* Brinda a los desarrolladores un alto grado de flexibilidad y control sobre los recursos del sistema.

Ejemplo: X-Kernel.

# User vs Kernel mode
| Modo Kernel                                             | Modo Usuario                                             |
|--------------------------------------------------------|----------------------------------------------------------|
| En el modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema. | En modo usuario, el programa de aplicación se ejecuta y se inicia.        |
| En el modo Kernel, todo el sistema operativo podría dejar de funcionar si se produce una interrupción. | En el modo de usuario, un solo proceso falla si se produce una interrupción.   |
| El modo kernel también se conoce como modo maestro, modo privilegiado o modo de sistema. | El modo de usuario también se conoce como modo sin privilegios, modo restringido o modo esclavo.   |
| En el modo kernel, todos los procesos comparten un único espacio de direcciones virtuales. | En el modo de usuario, todos los procesos obtienen un espacio de direcciones virtuales separado. |
| En el modo kernel, las aplicaciones tienen más privilegios en comparación con el modo usuario. | Mientras que en modo usuario las aplicaciones tienen menos privilegios. |
| El bit de modo del modo kernel es 0.                   | Mientras que el modo de usuario necesita acceder a los programas del kernel, ya que no puede acceder directamente a ellos. |
| Como el modo kernel puede acceder tanto a los programas de usuario como a los programas del kernel, no hay restricciones. | El bit de modo del modo de usuario es 1. |

