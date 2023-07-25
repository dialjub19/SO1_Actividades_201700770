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
