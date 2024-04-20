import { Component } from '@angular/core';

@Component({
  selector: 'app-qr-page',
  templateUrl: './qr-page.component.html',
  styleUrl: './qr-page.component.scss'
})
export class QrPageComponent {

  imageUrl: any;

  openCamera() {
    const cameraInput = document.getElementById('cameraFileInput') as HTMLInputElement;
    cameraInput.click();
  }

  onFileSelected(event: any) {
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = (e) => {
        this.imageUrl = e.target?.result;
      };
    }
  }


}
