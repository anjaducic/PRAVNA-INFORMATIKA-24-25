import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VerdictCreateFormComponent } from './verdict-create-form.component';

describe('VerdictCreateFormComponent', () => {
  let component: VerdictCreateFormComponent;
  let fixture: ComponentFixture<VerdictCreateFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [VerdictCreateFormComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VerdictCreateFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
