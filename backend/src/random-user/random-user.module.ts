import { Module, HttpModule } from '@nestjs/common';
import { RandomUserService } from './random-user.service';

@Module({
  providers: [RandomUserService],
  imports: [
    HttpModule,
  ],
  exports: [
    RandomUserService,
  ],
})
export class RandomUserModule {}
