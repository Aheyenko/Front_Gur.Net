import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginFormComponent } from './login-form/login-form.component';
import { MemberDetailsComponent } from './member-details/member-details.component';

const routes: Routes = [
  { path: 'login', component: LoginFormComponent },
  { path: 'member-details/:id', component: MemberDetailsComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
