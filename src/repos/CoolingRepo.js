import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class CoolingRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(search, sortby, order){
        return await this.models.cooling.findAll({
            where: search,
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.type_cooling,
                as: 'type_cooling',
                attributes:['type_cooling']
            },
            {
                model: this.models.sockets,
                as: 'sockets',
                through: {
                    model: this.models.cooling_socket,
                    attributes: []
                },
                attributes: ['socket']
            },
            ],
            order:[[sortby, order]]
        })
    }

    async getItem(id){
        return await this.models.cooling.findOne({
            where: {id:id},
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.type_cooling,
                as: 'type_cooling',
                attributes:['type_cooling']
            },
            {
                model: this.models.sockets,
                as: 'sockets',
                through: {
                    model: this.models.cooling_socket,
                    attributes: []
                },
                attributes: ['socket']
            },
            ],
        })
    }
}

export const coolingRepo = new CoolingRepo(initModels, db)