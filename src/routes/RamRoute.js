import { Router } from "express";
import {ramController} from '../controllers/RamController.js'

export const ramRouter = new Router()

ramRouter.get('/', ramController.getAllItems)