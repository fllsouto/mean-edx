## Fundamentals

_Bson - Binary Json_  
O mongo guarda os documentos em coleções diferentes, caso eu esteja no console por exemplo :  

``` 
db.test.inser({hello: "world"}) 
```  
irá inserir um novo document na collection **test**. Esse **document** é especificado como um _JSON_.  

O arquivo **package.json** descreve os metadados dos apps e dos packages usados.

---
## Modelo de Concorrencia

O modelo de concorrencia do javascript é orientado a eventos, pode ser descrito como algo assim : 

```
while(waitForEvents()) {
  processEvents();
}
```

Existe uma fila de eventos para serem executados, caso um operação esteja **bloqueada** esperando o termino de I/O existirá um evento de **callback** dessa operação, quando a operação terminal o **callback** é colocado nessa fila e é processado. Isso quebra de forma eficiente processos blocantes. Por fim esse loop acima é single thread.  

O código que é executado na iteração corrente é considerado sincrono, pois bloqueia o loop de eventos. Os que não bloqueiam são considerados assincronos. Comumente operações de IO e rede são assincronos.

---
## Acessando arquivos e o require
O método require é a forma correta de compartilhar código entre diferentes arquivos. Além disso o path até o arquivo toma como refência o atual. Quando o require acontece sobre um dirétório o node irá procurar o primeiro index.js, exemplo : 

```
require('./test') //onde teste é uma pasta equivale a require('./test/index.js')

```