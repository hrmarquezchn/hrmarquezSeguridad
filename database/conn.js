import pg  from 'pg-promise';
const pgp = pg();

import dotenv  from "dotenv";
dotenv.config();

const user = process.env.USER;
const pass = process.env.PASS;
const host = process.env.HOST;
const database = process.env.DB;

const cn = `postgresql://${user}:${pass}@${host}:5432/${database}?ssl=true`;

const cn2 =`postgres://hrmarquez26:tSJOoDdbiq8aahXFQ55NF3W3b8p80a4I@dpg-clcmsbd4lnec73e3mefg-a.oregon-postgres.render.com/hrmarquez26`

const db = pgp(cn);
db.connect()
    .then(
        ()=>{
            console.log("Conexion Exitosa de Postgres");
        }
    )
    .catch( (err)=>{

        console.log(`Error de Conexion ${err}`);

    } );

export {db};