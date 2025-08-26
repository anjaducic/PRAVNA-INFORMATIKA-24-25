import { Routes } from '@angular/router';
import { VerdictListComponent } from '../components/verdict-list/verdict-list.component';
import { VerdictFormComponent } from '../components/verdict-form/verdict-form.component';

export const routes: Routes = [
  { path: '', component: VerdictListComponent, runGuardsAndResolvers: 'always' },
  { path: 'unos-slucaja', component: VerdictFormComponent, runGuardsAndResolvers: 'always' }

];

