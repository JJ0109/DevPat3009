namespace com.epl;

using com.epl as db from '../db/data-model';

service CatalogService {
    @readonly
    entity Typ as projection on db.Typ;
    @readonly 
    entity Geraet as select from db.Geraet;
}