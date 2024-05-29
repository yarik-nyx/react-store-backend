import {processorRepo} from '../repos/ProcessorRepo.js'
import Pagination from '../utils/pagination.js'
import {Op} from 'sequelize'

class ProcessorService{
    async getAllItems(page, limit, search,sortby, order){
        if(search){
            search = {
                title: {
                    [Op.like]: `%${search}%`
                }
            }
        } else {
            search = {

            }
        }
        const data = await processorRepo.getAllItems(search, sortby, order) 
        if(page && limit && data.length > 0){
            return Pagination(page, limit, data)
        }

        return data

        
    }

    async getItem(id){
        return await processorRepo.getItem(id)
    }
}

export const processorService = new ProcessorService()