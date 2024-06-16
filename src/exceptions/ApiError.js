export class ApiError extends Error {
    status
    erros
    constructor(status, message, erros = []){
         super(message)
         this.status = status
         this.erros = erros
    }


    static BadRequest(message, errors = []) {
        return new ApiError(400, message, errors)
    } 

    static NotFound(){
        return new ApiError(404, 'Не найдено')
    }
}