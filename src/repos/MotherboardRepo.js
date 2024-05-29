import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'

class MotherboardRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }

    async getAllItems(search, sortby, order){
        return await this.models.motherboards.findAll({
            where: search,
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.chipsets,
                as: 'chipset',
                attributes:['chipset']
            },
            {
                model: this.models.form_factors,
                as: 'form _factor',
                attributes:['form_factor']
            },
            {
                model: this.models.sockets,
                as: 'socket',
                attributes:['socket']
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
        return await this.models.motherboards.findOne({
            where: {id:id},
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.chipsets,
                as: 'chipset',
                attributes:['chipset']
            },
            {
                model: this.models.form_factors,
                as: 'form _factor',
                attributes:['form_factor']
            },
            {
                model: this.models.sockets,
                as: 'socket',
                attributes:['socket']
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

export const motherboardRepo = new MotherboardRepo(initModels, db)