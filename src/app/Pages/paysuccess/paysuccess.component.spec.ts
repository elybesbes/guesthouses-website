import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PaysuccessComponent } from './paysuccess.component';

describe('PaysuccessComponent', () => {
  let component: PaysuccessComponent;
  let fixture: ComponentFixture<PaysuccessComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PaysuccessComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(PaysuccessComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
