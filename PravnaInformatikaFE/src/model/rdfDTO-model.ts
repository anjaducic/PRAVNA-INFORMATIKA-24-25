export interface RdfInputDTO {
    caseName: string;
    defendant?: string;
    dependent?: string;
    violations: { [key: string]: boolean }; //  Posto je svaki multipleSelect odnosno prekrsen clan niz (svaki clan ima vise delova)
}
