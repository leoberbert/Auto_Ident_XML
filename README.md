# Auto Ident XML

Identação para XML.

Modo de utilização:

```console
echo "<?xml version="1.0" encoding="UTF-8"?><from>Teste</from><message>viva o linux</message>" | perl ident_xml.pl

<?xml version=1.0 encoding=UTF-8?>
<from>Teste</from>
<message>viva o linux</message>
``
