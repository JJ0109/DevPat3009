namespace com.epl;

using { managed, cuid, sap.common.CodeList } from '@sap/cds/common';


//Teams
entity Typ : managed {
  key ID : Integer;
  name : String(30);
}

//Matches
entity Geraet: cuid, managed {
  ID: Integer;
  status : String(10);
  verbindung: Association to Typ;
}