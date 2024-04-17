import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-submit-application',
  template: '',
})
export class SubmitApplicationComponent implements OnInit {
  constructor() { }

  ngOnInit(): void {
    this.submitApplication();
  }

  submitApplication(): void {
    const googleFormUrl = 'https://docs.google.com/forms/d/e/1FAIpQLSeOrOuAqsL2sebI8qAm575f9zg2L555bEBY6q55uFvNUrmWDA/viewform?usp=sf_link';
    window.open(googleFormUrl, '_blank');
  }
}
