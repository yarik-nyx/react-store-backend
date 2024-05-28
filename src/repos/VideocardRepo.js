import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class VideocardRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(){
        return await this.videocards.rams.findAll()
    }
}

export const videocardRepo = new VideocardRepo(initModels, db)