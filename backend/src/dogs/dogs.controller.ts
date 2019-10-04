import { Controller, Get } from '@nestjs/common';
import { ApiResponse } from '@nestjs/swagger';
import { BiographyService } from '../biography/biography.service';
import { Biography } from '../biography/biography.interface';

@Controller('dogs')
export class DogsController {

  constructor(private bioService: BiographyService) {}

  @Get()
  @ApiResponse({
    status: 200,
    description: 'Testing Endpoint',
    type: String,
  })
  getTest(): Biography {
    return this.bioService.getBio();
  }
}
