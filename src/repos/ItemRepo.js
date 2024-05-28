import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class ItemRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(){
        return await this.models.processors.findAll()
    }
}

export const itemRepo = new ItemRepo(initModels, db)