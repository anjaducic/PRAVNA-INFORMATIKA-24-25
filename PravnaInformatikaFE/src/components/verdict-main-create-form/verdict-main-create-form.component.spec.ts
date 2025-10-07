import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VerdictMainCreateFormComponent } from './verdict-main-create-form.component';

describe('VerdictMainCreateFormComponent', () => {
  let component: VerdictMainCreateFormComponent;
  let fixture: ComponentFixture<VerdictMainCreateFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [VerdictMainCreateFormComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VerdictMainCreateFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
