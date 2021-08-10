function fn(){
    var config={
       abc : 'test'
       anyVariable : 'value'
    }
    var env = karate.env
    karate.log('Enviroment value is',env)
    return config;
}