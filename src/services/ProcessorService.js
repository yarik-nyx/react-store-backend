import {processorRepo} from '../repos/processorRepo.js'

class ProcessorService{
    async getAllItems(page, limit, search){
        const data = await processorRepo.getAllItems(search) 
        
        if(page && limit && data.length > 0){
            const pageCount = Math.ceil(data.length / limit);
            const pages = []
            for (let index = 0; index < pageCount; index++) {
                pages.push([data.slice(limit * index,limit * index + limit)])
            }
            pages[page - 1].pageCount = {
                pageCount
            }
            console.log(pages[page - 1].flat());
            return pages[page - 1].flat()
        }
        return data

        
    }
}

export const processorService = new ProcessorService()