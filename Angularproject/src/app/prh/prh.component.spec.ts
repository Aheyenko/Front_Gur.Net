import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PrhComponent } from './prh.component';

describe('PrhComponent', () => {
  let component: PrhComponent;
  let fixture: ComponentFixture<PrhComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PrhComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(PrhComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
