import { Router } from "express";
import {processorController} from '../controllers/ProcessorController.js'

export const processorRouter = new Router()

processorRouter.get('/', processorController.getAllItems)