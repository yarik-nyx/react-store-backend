import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class VideocardRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(search, sortby, order){
        return await this.models.videocards.findAll({
            where: search,
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.videochipsets,
                as: 'videochipset',
                attributes:['videochipset']
            },
            {
                model: this.models.interfaces,
                as: 'interface',
                attributes:['interface']
            },
            {
                model: this.models.types_capacity,
                as: 'type_capacity',
                attributes:['type_capacity']
            },
            ],
            order:[[sortby, order]]
        })
    }

    async getItem(id){
        return await this.models.videocards.findOne({
            where: {id:id},
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.videochipsets,
                as: 'videochipset',
                attributes:['videochipset']
            },
            {
                model: this.models.interfaces,
                as: 'interface',
                attributes:['interface']
            },
            {
                model: this.models.types_capacity,
                as: 'type_capacity',
                attributes:['type_capacity']
            },
            ],
        })
    }
}

export const videocardRepo = new VideocardRepo(initModels, db)