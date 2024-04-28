import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AuthService } from './auth.service';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginFormComponent } from './login-form/login-form.component';
import { MemberDetailsComponent } from './member-details/member-details.component';
import { RouterModule } from '@angular/router';
import { PaymentComponent } from './payment/payment.component';
import { QrPageComponent } from './qr-page/qr-page.component';
import { ConfirmationComponent } from './confirmation/confirmation.component';
import { DataComponent } from './data/data.component';
import { GuestComponent } from './guest/guest.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginFormComponent,
    MemberDetailsComponent,
    PaymentComponent,
    QrPageComponent,
    ConfirmationComponent,
    DataComponent,
    GuestComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    AppRoutingModule,
    RouterModule
  ],
  providers: [ AuthService],
  bootstrap: [AppComponent]
})
export class AppModule { }
