import {ApiError} from '../exceptions/ApiError.js'

export function errorMid (err, req, res, next){
    
    if(err instanceof ApiError){
        return res.status(err.status).json({
            errMessage: err.message,
            errors: err.erros
        })
    }
    console.log(err)
    return res.status(500).json({
        errMessage:'Непредвиденная ошибка',
        errors: {}
    })
}