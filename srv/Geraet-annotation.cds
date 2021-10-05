using com.epl.CatalogService from './cat-service';

annotate CatalogService.Geraet with @(
  UI:{
    Identification: [{ Value: 'Geraet' }],
    SelectionFields: [ 'ID','status','verbindung_ID' ],
    LineItem: [
  
      { Value: ID, Label: 'ID' },    
      { Value: status, Label: 'Status' }            

    ]
  }
){
  verbindung @(
    Common: {
      Label: 'Typ',
      ValueList: {
        Label: 'Typ',
        CollectionPath: 'Typ',
        Parameters:[
	  { $Type:'Common.ValueListParameterInOut', LocalDataProperty: 'verbindung_ID', ValueListProperty:'ID' },
          { $Type:'Common.ValueListParameterDisplayOnly', ValueListProperty:'name' },
		    ]
      }
    }
  );
};