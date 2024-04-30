import { Component } from '@angular/core';
import { Router } from "@angular/router"
import { AuthService } from '../auth.service';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.scss'],
})
export class LoginFormComponent {
  identificationCode: string = '';
  email: string = '';
  errorMessage: string = ''; // змінна для відображення помилок

  constructor(private authService: AuthService, private router: Router,
    private http: HttpClient
  ) { } // Впровадження AuthService в компонент

  onSubmit(): void {
    this.http.post('https://localhost:5001/api/login', {
        email: this.email,
        password: this.identificationCode
      }).subscribe((response) => {
        console.log(response);
        this.router.navigate(['/member-details/' + this.email]);
      }, (error) => {
        console.log(error);
      });
  
    // Виконуємо перевірку введених даних перед відправкою на сервер
    if (!this.email || !this.identificationCode) {
      this.errorMessage = 'Будь ласка, заповніть всі поля'; // Відображаємо повідомлення про неповність даних
      return;
    }
  }
}
