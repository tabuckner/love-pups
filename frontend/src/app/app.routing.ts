import { NgModule } from '@angular/core';
import { Routes, RouterModule, PreloadAllModules } from '@angular/router';

const DEFAULT_ROUTE = 'home';

const routes: Routes = [
  { path: 'home', loadChildren: 'src/app/home/home.module#HomeModule' },
  { path: 'feed', loadChildren: 'src/app/feed/feed.module#FeedModule' },
  { path: '', redirectTo: DEFAULT_ROUTE, pathMatch: 'full' },
  { path: '**', redirectTo: DEFAULT_ROUTE, pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
