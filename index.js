import dotenv from 'dotenv'
dotenv.config()
import express from 'express'
import {checkDbConnection} from './src/db/db.js'
import {errorMid} from './src/middlewares/errorMid.js'

import { db } from './src/db/db.js'
import { initModels } from './src/models/init-models.js'


const app = express()
const PORT = process.env.PORT || 3000

app.use(express.json())

app.get('/items', async (req, res, next) => {
    const models = initModels(db)
    const data = await models.processors.findAll()
    return res.status(200).json(data)
})

app.use(errorMid)




app.listen(PORT, (err) => {
    if(err){
        console.log(err);
        return
    }
    console.log(`Server has started on port: ${PORT}`);
})



