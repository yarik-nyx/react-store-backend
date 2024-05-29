export default function(page, limit, data){

            
        const pageCount = Math.ceil(data.length / limit);
        const pages = []
        for (let index = 0; index < pageCount; index++) {
            pages.push([data.slice(limit * index,limit * index + limit)])
        }
        pages[page - 1].pageCount = {
            pageCount
        }

        return pages[page - 1].flat()
    
}