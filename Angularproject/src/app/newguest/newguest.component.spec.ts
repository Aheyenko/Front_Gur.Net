import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NewguestComponent } from './newguest.component';

describe('NewguestComponent', () => {
  let component: NewguestComponent;
  let fixture: ComponentFixture<NewguestComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [NewguestComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(NewguestComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
