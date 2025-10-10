export interface RdfInputDTO {
  caseName: string;
  defendant?: string;
  dependent?: string;
  violations: { [key: string]: boolean };
}
