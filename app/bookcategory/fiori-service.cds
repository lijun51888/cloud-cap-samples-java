/*
  Annotations for the Manage Books App
*/

using AdminService from '../../srv/admin-service';

////////////////////////////////////////////////////////////////////////////
//
//	Books Object Page
//

annotate AdminService.BookCategory with @(
	UI: {
		LineItem: [
			{Value: ID},
			{Value: descr},
			{Value: subBookQuantity}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.FieldGroup#General'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Admin}', Target: '@UI.FieldGroup#Admin'},
		],
		FieldGroup#General: {
			Data: [
				{Value: ID},
				{Value: descr},
				{Value: subBookQuantity}
			]
		},
		FieldGroup#Admin: {
			Data: [
				{Value: createdBy},
				{Value: createdAt},
				{Value: modifiedBy},
				{Value: modifiedAt}
			]
		}
	}
);

annotate AdminService.Books_texts with @(
	UI: {
		Identification: [{Value:title}],
		SelectionFields: [ locale, title ],
		LineItem: [
			{Value: locale, Label: '{i18n>Locale}'},
			{Value: title, Label: '{i18n>Title}'},
			{Value: descr, Label: '{i18n>Description}'},
		]
	}
);



