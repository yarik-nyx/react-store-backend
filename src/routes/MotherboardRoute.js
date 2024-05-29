import { Router } from "express";
import {motherboardController} from '../controllers/MotherboardController.js'

export const motherboardRouter = new Router()

motherboardRouter.get('/', motherboardController.getAllItems)

motherboardRouter.get('/:id', motherboardController.getItem)