
# PRIMEROS PASOS

A continuación comparto de manera simple los pasos a seguir para dar inicio al proceso de acceso a los hyperscalers, proteger mínimamente la cuenta de gestión y crear un usario con el que realizaremos las actividades de automatización.

**NOTA: Aunque los hyperscalers ofrecen servicios gratuitos, algunos por 12 meses e inclusive de acuerdo al uso por más tiempo, no signigica que no vayamos a tener un desborde de costos por nuestro desconocimiento, exceso de confianza o hasta descuido de  la cuenta, por ésta razón también considero la implementación de un dashboard de costos de cada hyperscaler que actives, el uso de múltiple factor de autenticación y el alertamiento en línea del consumo asociado.**

**DISCLAIMER (Descargo de Responsabilidad): LA RESPONSABILIDAD DE LA SEGURIDAD DE LA CUENTA DE HYPERSCALER, DE LOS DATOS QUE TRANSFIERES A LA NUBE, DEL COSTO DE CONSUMO Y DEL USO DEL CÓDIGO COMPARTIDO COMO BASE PARA CONSTRUIR ES SOLO TUYA. YO HARÉ MI MEJOR ESFUERZO POR MANTENERTE ALERTA CON LO QUE SÉ Y VOY APRENDIENDO EN EL PROCESO PARA EVITAR DAÑOS, PERO DEBES SER CONSCIENTE DE LO QUE HACES EN CADA PASO Y DE VALIDAR SI LOS RECURSOS QUE APROVISIONAS TENDRÁN UN IMPACTO EN TU BOLSILLO O DATOS. ESTE REPOSITORIO CONTIENE CÓDIGO DE LABORATORIOS DE APRENDIZAJE, NO SE RECOMIENDA SU USO LITERAL EN PRODUCCIÓN, COMPRENDE Y AJUSTA SEGÚN SEA REQUERIDO**

## Crear cuenta en hyperscaler

### AWS

http://portal.aws.amazon.com

<img src="src/img/AWS-create-account.png"/>

## Activar MTF (multiple factor de autenticación)

[Procedimiento simple con imágenes paso a paso](https://rubenjgarcia.cloud/crear-cuenta-aws-gratis/), gracias a ***Ruben J. García*** por compartirlo en su blog, en la sección MFA.

[Procedimiento Oficial AWS](https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/id_credentials_mfa_enable_virtual.html#enable-virt-mfa-for-iam-user)

## Crear reporte de costos con alertamiento por debajo del umbral

## Crear usuario de automatización

[AWS - IAM](https://docs.aws.amazon.com/es_es/IAM/latest/UserGuide/id_users_create.html) 

## Mantener pestaña de navegador abierta para validar servicios de capa gratuita

[AWS] [AWS - Free Tier](https://aws.amazon.com/es/free/)

[Microsoft] [Azure - Free Tier](https://azure.microsoft.com/en-us/pricing/free-services)

[Google] [GCP - Free Tier](https://cloud.google.com/free)

## Abrir consola web para validar cambios

## Generar llaves/tokens/credenciales de autenticación para usuario de automatización

## Instalar CLI del hyperscaler y realizar configuración para eliminar autenticación via terraform

## Realizar pruebas de aprovisionamiento con Terraform
