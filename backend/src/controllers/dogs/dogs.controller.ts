import { Controller, Get, Param } from '@nestjs/common';
import { ApiResponse } from '@nestjs/swagger';
import { Observable } from 'rxjs';
import { DogEntity } from './models/dog-entity.model';
import { DogEntitiesService } from '../../services/dog-entities/dog-entities.service';

@Controller('dogs')
export class DogsController {

  constructor(private dogEntitiesService: DogEntitiesService) { }

  @Get()
  @ApiResponse({
    status: 200,
    description: 'Testing Endpoint',
    type: String,
  })
  root(): Observable<DogEntity> {
    return this.dogEntitiesService.getDogEntity();
  }

  @Get('/:quantity')
  getQuantity(@Param('quantity') quantity): Observable<DogEntity[]> {
    return this.dogEntitiesService.getDogEntities(quantity);
  }
}
