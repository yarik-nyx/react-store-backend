import {motherboardRepo} from '../repos/MotherboardRepo.js'
import Pagination from '../utils/pagination.js'
import {Op} from 'sequelize'

class MotherboardService{
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
        const data = await motherboardRepo.getAllItems(search, sortby, order) 
        if(page && limit && data.length > 0){
            return Pagination(page, limit, data)
        }

        return data

        
    }

    async getItem(id){
        return await motherboardRepo.getItem(id)
    }
}

export const motherboardService = new MotherboardService()