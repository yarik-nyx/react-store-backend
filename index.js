import dotenv from 'dotenv'
dotenv.config()
import express from 'express'

import {apiRouter} from './src/routes/Api.js'
import {coolingRouter} from './src/routes/CoolingRoute.js'
import {motherboardRouter} from './src/routes/MotherboardRoute.js'
import {powerSupRouter} from './src/routes/PowerSupRoute.js'
import {processorRouter} from './src/routes/ProcessorRoute.js'
import {ramRouter} from './src/routes/RamRoute.js'
import {videocardRouter} from './src/routes/VideocardRoute.js'

import {errorMid} from './src/middlewares/errorMid.js'


const app = express()
const PORT = process.env.PORT || 3000

app.use(express.json())

app.use('/items',apiRouter)
app.use('/Coolings',coolingRouter)
app.use('/Motherboards',motherboardRouter)
app.use('/PowerSupplies',powerSupRouter)
app.use('/Processors',processorRouter)
app.use('/Rams',ramRouter)
app.use('/Videocards',videocardRouter)

app.use(errorMid)




app.listen(PORT, (err) => {
    if(err){
        console.log(err);
        return
    }
    console.log(`Server has started on port: ${PORT}`);
})



