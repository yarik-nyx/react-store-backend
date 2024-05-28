import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class RamRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(){
        return await this.models.rams.findAll()
    }
}

export const ramRepo = new RamRepo(initModels, db)