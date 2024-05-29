import { Router } from "express";
import {powerSupController} from '../controllers/PowerSupController.js'

export const powerSupRouter = new Router()

powerSupRouter.get('/', powerSupController.getAllItems)

powerSupRouter.get('/:id', powerSupController.getItem)