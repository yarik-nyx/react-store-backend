import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'
import {Op} from 'sequelize'

class ProcessorRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }


    async getAllItems(search){
        return await this.models.processors.findAll({
            where: { title: {
                [Op.like]: search ? `%${search}%` : null
              }},
            include:[{
                model: this.models.brand,
                as: 'brand',
                attributes:['name']
            },
            {
                model: this.models.sockets,
                as: 'socket',
                attributes:['socket']
            },
            {
                model: this.models.letters,
                as: 'letters',
                through: {
                    model: this.models.proc_let,
                    attributes: []
                },
                attributes: ['letter']
            },
            {
                model: this.models.types,
                as: 'types',
                through: {
                    model: this.models.proc_types,
                    attributes: []
                },
                attributes: ['type']
            }
        ]
        })
    }
}

export const processorRepo = new ProcessorRepo(initModels, db)