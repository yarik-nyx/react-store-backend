import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class CoolingRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(){
        return await this.models.cooling.findAll()
    }
}

export const coolingRepo = new CoolingRepo(initModels, db)