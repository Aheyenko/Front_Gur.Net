import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginFormComponent } from './login-form/login-form.component';
import { MemberDetailsComponent } from './member-details/member-details.component';
import { SubmitApplicationComponent } from './submit-application/submit-application.component';
import { PaymentComponent } from './payment/payment.component';
import { QrPageComponent } from './qr-page/qr-page.component';
import { ConfirmationComponent } from './confirmation/confirmation.component';
import { HomeComponent } from './home/home.component';
import { DataComponent } from './data/data.component';
import { GuestComponent } from './guest/guest.component';
import { PrhComponent } from './prh/prh.component';
import { SearchComponent } from './search/search.component';
import { NewguestComponent } from './newguest/newguest.component';
import { FormsModule } from '@angular/forms';
import { AuthGuard } from './auth.guard';

const routes: Routes = [
  { path: '', component: LoginFormComponent },
  {path: 'confirmation', component: ConfirmationComponent},
  { path: 'login-form', component: LoginFormComponent },
  { path: 'member-details/:id', component: MemberDetailsComponent },
  {path: 'submit-application', component: SubmitApplicationComponent},
  {path: 'payment', component: PaymentComponent},
  {path: 'qr-page', component: QrPageComponent},
  {path: "home", component: HomeComponent},
  {path: "data", component: DataComponent},
  {path: "guest", component: GuestComponent},
  {path: "prh", component: PrhComponent},
  {path: "search", component: SearchComponent},
  {path: "newguest", component: NewguestComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes), FormsModule],
  exports: [RouterModule]
})
export class AppRoutingModule { }
