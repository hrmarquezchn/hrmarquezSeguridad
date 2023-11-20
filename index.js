import  Express  from "express";
const app = Express();
import { auth } from "./routes/auth.js";
import { dataExample } from "./routes/dataExample.js";

app.use(Express.json());
app.use('/api/auth', auth);
app.use('/api/dataExample', dataExample);
app.listen(4000, ()=>{

    console.log("Servidor en puerto 4000");

})