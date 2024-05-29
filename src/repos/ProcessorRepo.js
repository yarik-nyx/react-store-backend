import { db } from '../db/db.js'
import { initModels } from '../models/init-models.js'
import {Op} from 'sequelize'

class ProcessorRepo{
    constructor(initModels, db){
        this.models = initModels(db)
    }


    async getAllItems(search, sortby, order){
        return await this.models.processors.findAll({
            where: search,
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
            ],
            order:[[sortby, order]]
        })
    }

    async getItem(id){
        return await this.models.processors.findOne({
            where: {id:id},
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
            ],
        })
    
    }
}

export const processorRepo = new ProcessorRepo(initModels, db)