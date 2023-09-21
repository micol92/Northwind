using {NorthWind as external} from './external/NorthWind.csn';

service CatalogService {
    entity Orders {
        key ID      : String(5);
        owner       : String(100);
        products    : Association to Products;
    }

    @readonly
    entity Products as projection on external.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };

    @readonly
    entity Products2 as projection on external.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };

}