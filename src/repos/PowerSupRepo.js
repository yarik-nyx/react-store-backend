import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class PowerSupRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(){
        return await this.models.power_supplies.findAll()
    }
}

export const powerSupRepo = new PowerSupRepo(initModels, db)