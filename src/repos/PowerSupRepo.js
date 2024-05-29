import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class PowerSupRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(search, sortby, order){
        return await this.models.power_supplies.findAll({
            where: search,
            include:[{
                model: this.models.ps_certificates,
                as: 'certificate',
                attributes:['certificate']
            },
            {
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            ],
            order:[[sortby, order]]
        })
    }

    async getItem(id){
        return await this.models.power_supplies.findOne({
            where: {id:id},
            include:[{
                model: this.models.ps_certificates,
                as: 'certificate',
                attributes:['certificate']
            },
            {
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            ],
        })
    }
}

export const powerSupRepo = new PowerSupRepo(initModels, db)