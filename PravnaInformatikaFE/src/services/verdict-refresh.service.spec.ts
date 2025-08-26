import { TestBed } from '@angular/core/testing';

import { VerdictRefreshService } from './verdict-refresh.service';

describe('VerdictRefreshService', () => {
  let service: VerdictRefreshService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(VerdictRefreshService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
