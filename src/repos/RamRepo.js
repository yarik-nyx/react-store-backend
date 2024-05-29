import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class RamRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(search, sortby, order){
        return await this.models.rams.findAll({
            where: search,
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.types_ram,
                as: 'type_ram',
                attributes:['type_ram']
            },
            ],
            order:[[sortby, order]]
        })
    }

    async getItem(id){
        return await this.models.rams.findOne({
            where: {id:id},
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.types_ram,
                as: 'type_ram',
                attributes:['type_ram']
            },
            ],
        })
    }
}

export const ramRepo = new RamRepo(initModels, db)