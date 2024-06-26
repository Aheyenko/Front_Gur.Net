import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { Observable, of, throwError } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private router: Router) { }

  setToken(token: string) {
    localStorage.setItem('token', token);
  }

  getToken() {
    return localStorage.getItem('token');
  }

  isLoggedIn() {
    return this.getToken() !== null;
  }

  login(userInfo: { email: string, identificationCode: string }): Observable<boolean> {
    if (userInfo.email === '' && userInfo.identificationCode === '') {
      this.setToken('');
      return of(true);
    }
    return throwError(() => new Error(''));
  }

  logout(){
    this.router.navigate(['sign'])
  }
}
