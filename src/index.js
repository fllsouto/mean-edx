var mongodb = require('mongodb');

var uri = 'mongodb://localhost:27017/example';

// o metodo recebi o endereço da conexão e uma função de callback
mongodb.MongoClient.connect(uri, function(error, db) {
  if(error) {
    console.log(error);
    process.exit(1);
  }

  db.collection('sample').insert({ x: 2}, function(error, result){
    if(error) {
      console.log(error);
      process.exit(1);
    }

    db.collection('sample').find().toArray(function(error, docs) {
    if(error) {
      console.log(error);
      process.exit(1);
    }

    console.log('Found docs:');
    docs.forEach(function(doc) {
      console.log(JSON.stringify(doc));
    });
    process.exit(1);  
    });
  });
});