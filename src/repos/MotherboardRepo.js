import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class MotherboardRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(){
        return await this.models.motherboards.findAll()
    }
}

export const motherboardRepo = new MotherboardRepo(initModels, db)