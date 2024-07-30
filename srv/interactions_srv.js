const cds = require('@sap/cds')



module.exports = async(srv) =>{

    let db = cds.connect.to(srv)
    
    /*srv.on('READ', 'users' , req => {
        console.log("Estoy leyendo los usuarios")
    })

    srv.before('READ', 'users' , req => {
        console.log("Antes de leer los usuarios")
    })

    srv.after('READ', 'users' , req => {
        console.log("Despues de leer usuarios")
    })*/


    srv.on('submitOrder', req =>{
        let data = req.data.quantity;
        /*if(req.user.is('Manager')){
            data = 0;
        }*/
        console.log(data);
        return data;
    })

}

