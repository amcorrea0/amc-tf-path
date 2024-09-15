# TERRAFORM, OPENTOFU AND MORE - DESARROLLANDO MIS CAPACIDADES EXPONENCIALMENTE

## PROPÓSITO: Por qué existe éste proyecto?

Como apasionado de TI, decidí embarcarme en el proceso de aprender ágilmente acerca de la tecnología ***Terraform*** y compartir mi aprendizaje en temas de *IaC* y *Observabilidad*. Seguro compartiré otros temas relacionados con éste proyecto, pero el principal propósito es desarrollar a profundidad mis habilidades en IaC + Observabilidad para los 3 hyperscalers principales (AWS, GCP y Azure).

Deseo poner a prueba la integración de la multinube (hybrid cloud), automatizando el aprovisionamiento de la infra y servicios asociados, siempre asegurando cumplir con estándares mínimos de observabilidad, y todo a través de código... sí... el principal objetivo de éste proceso es desarrollar mi capacidad de ver el mundo como código ***"Everything as Code"***... en lo posible de manera agnóstica de fabrincantes, y al tiempo que desarrollo éstas capacidades, compartirlas a compañeros, amigos y todo aquel que encuentre valor en éstos assets que desarrollaré en el proceso.

Y no quiero dejar pasar, lo que de seguro será de gran utilidad para muchos de uds, y es que éstas fases iniciales de aprendizaje están orientadas sólo a servicios free en los hyperscalers, pero no te dejaré sol@, te mostraré, cómo desde mi propia experiencia, me asguro de mantenerme libre de costos... y además, cómo los mediría con un proceso básico de gestión de costos, orientado a prácticas FinOps ;.), espero lo disfurtes

## QUÉ PIDO A CAMBIO?

Es claro que me encanta compartir, pero también busco retroalimentación constante que me ayude a crecer y ser mejor. Si haces uso de la información que comparto, de los códigos que iré generando y/o crees que puedes ayudarme con éste objetivo de mejora continua, te agradezco me hagas llegar tus comentarios, si es valioso para tí lo que estoy compartiendo, si encuentras mejores maneras de solucionar los problemas que plantearé en el proceso, e incluso, por qué no?, si tienes un problema que te gustaría compartir para resolver con ésta tecnología, todos tus aportes son bienvenidos.

...ahhh no olvides, que en las primeras semanas estaré en modo aprendizaje, soluciones básicas, nada del otro mundo, estaré explorando, después iremos sumando.

Y si estás dispuesto a compartir algo de dinero en representación de la utilidad que encuentres en éste repositorio, puedes hacerlo a través del botón ***"donate"*** de Paypal a continuación:

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/donate/?business=BCJQ65U4PHTAQ&no_recurring=0&item_name=Gracias+por+apoyar+la+documentaci%C3%B3n+y+c%C3%B3digo+terraform%2C+opentofu+and+more+del+repositorio+amc-tf-path.&currency_code=USD)

## CÓMO EMPIEZO?

Como yo ;-), con un propósito claro!

Qué deseas hacer?, qué quieres aprender?, qué quieres descubrir?, qué intentas probar?, qué vas a aportar con ésto?...

En lo personal, soy apasionado por la mejora continua y en éste mundo de TI... de la agilidad... pero no de esa agilidad del libro, tampoco de la metodología de moda ;-) (jejeje... sí lo dije... y sé que no es una metodología, pero es lo que sueles escuchar, verdad?), qué tal si lo dejamos en: 

**"Me encanta moverme en la incertidumbre, me encanta explorar, experimentar, y sí estrellarme en el camino de vez en cuando, al tiempo que descubro cómo mejorar cada tarea que realizo. No me gusta para nada el trabajo repetitivo y manual, me encanta crear, retarme continuamente y sacar la mejor versión de mi y de los demás"**

Creo que lo que acabo de mencionar acerca de mi, encaja perfectamente con lo que promueven los marcos ágiles, así que sí, creo que son de gran valor, aunque no para todo, para todos y mucho menos para ponerle la etiqueta de moda a tu nuevo cargo ;-). Si te interesa compartir más acerca de éste tema, te invito a conversar en redes, me puedes encontrar como ***@andrescorrea*** en <img alt="LinkedIn" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/600px-LinkedIn_logo_initials.png" width=18 height=18> <a href="https://www.linkedin.com" target="_blank">LinkedIn</a>, aquí continuaremos con el código y cómo usarlo :D

Volviendo al tema... después del propósito... yo sigo un plan (no detallado, hablemos como de un roadmap a gran escala), detallo mis hitos principales y los envío a mi Kanban Board (no detallaré eso), pero inicio mi trabajo, itero, pruebo, corrijo, mejoro y me adapto... porque tal vez ese roadmap deba transformarse en el camino. Lo que es claro, es lo que quiero lograr con éste proyecto, así que ajustaré las velas de manera continua.

Te comparto mi diseño de experiencia de aprendizaje, si te es útil, puedes ir al siguiente enlace para aprender acerca de éste modelo:

[LXD - Learning Experience Design](https://lxd.org)

<img alt="LXD - Everything as Code - Andrés M. Correa" src="src/img/Co-Creación/Learning_Experience_Canvas_v1.0.png">

Así, avanzando con tu plan, podrás tomar de aquí, mi experiencia instalando y configurando mis ambientes, te lo pongo en bandeja de plata ;-)... todo masticado para que no estés por 100 URLs y videos buscando cómo hacerlo simple, para después avanzar. Y por qué no un video tutorial?... ummhhhh... tal vez sea un ajuste posterior en próximas etapas

Si apenas te inicias en éste camino, podemos tocar algunas generalidades a continuación.


### Qué es Cloud?

### Qué es IaC?

### Qué es Observabilidad?

### Qué es mejora continua?

### Qué es Agilidad?

## Y Ahora?

### Vamos a instalar y configurar lo que sea necesario :D

Vamos al archivo [INSTALL](https://github.com/amcorrea0/amc-tf-path/blob/main/INSTALL.md) allí te comparto mi proceso (multicloud)

**DISCLAIMER (Descargo de Responsabilidad): LA RESPONSABILIDAD DE LA SEGURIDAD DE LA CUENTA DE HYPERSCALER, DE LOS DATOS QUE TRANSFIERES A LA NUBE, DEL COSTO DE CONSUMO Y DEL USO DEL CÓDIGO COMPARTIDO COMO BASE PARA CONSTRUIR ES SOLO TUYA. YO HARÉ MI MEJOR ESFUERZO POR MANTENERTE ALERTA CON LO QUE SÉ Y VOY APRENDIENDO EN EL PROCESO PARA EVITAR DAÑOS, PERO DEBES SER CONSCIENTE DE LO QUE HACES EN CADA PASO Y DE VALIDAR SI LOS RECURSOS QUE APROVISIONAS TENDRÁN UN IMPACTO EN TU BOLSILLO O DATOS. ESTE REPOSITORIO CONTIENE CÓDITO DE LABORATORIOS DE APRENDIZAJE, NO SE RECOMIENDA SU USO LITERAL EN PRODUCCIÓN, COMPRENDE Y AJUSTA SEGÚN SEA REQUERIDO**
