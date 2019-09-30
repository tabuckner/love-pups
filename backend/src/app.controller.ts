import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';
import { ApiResponse } from '@nestjs/swagger';
import { Biography } from './biography/biography.interface';
import { BiographyService } from './biography/biography.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService,
              private readonly bioService: BiographyService) {}

  @Get()
  @ApiResponse({
    status: 200,
    description: 'Hello World endpoint',
    type: String,
  })
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('/test')
  @ApiResponse({
    status: 200,
    description: 'Testing Endpoint',
    type: String,
  })
  getTest(): Biography {
    return this.bioService.getBio();
  }
}
