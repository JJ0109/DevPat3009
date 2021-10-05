using com.epl.CatalogService from './cat-service';

annotate CatalogService.Typ with @(
  UI: {
    Identification : [name],
    SelectionFields: [name],
      LineItem: [
	{ Value: ID, Label: 'TypID' },            
        { Value: name, Label: 'Name' }
      ]
  }
){
	ID @title:'ID' @UI.HiddenFilter;
	name @title:'Name';
}

//annotate CatalogService.Teams with @cds.odata.valuelist;