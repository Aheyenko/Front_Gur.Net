import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginFormComponent } from './login-form/login-form.component';
import { MemberDetailsComponent } from './member-details/member-details.component';
import { SubmitApplicationComponent } from './submit-application/submit-application.component';
import { PaymentComponent } from './payment/payment.component';
import { QrPageComponent } from './qr-page/qr-page.component';
import { FormsModule } from '@angular/forms';
import { ConfirmationComponent } from './confirmation/confirmation.component';


const routes: Routes = [
  { path: '', component: LoginFormComponent },
  {path: 'confirmation', component: ConfirmationComponent},
  { path: 'login-form', component: LoginFormComponent },
  { path: 'member-details/:id', component: MemberDetailsComponent },
  {path: 'submit-application', component: SubmitApplicationComponent},
  {path: 'payment', component: PaymentComponent},
  {path: 'qr-page', component: QrPageComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes), FormsModule],
  exports: [RouterModule]
})
export class AppRoutingModule { }
