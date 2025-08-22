import { TestBed } from '@angular/core/testing';

import { VerdictService } from './verdict.service';

describe('VerdictService', () => {
  let service: VerdictService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(VerdictService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
