CREATE TABLE kpi_summary (
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);

SELECT * FROM kpi_summary;
SELECT * FROM sales_by_fat_content;

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';
select * from kpi_summary;

CREATE TABLE sales_by_fat_content (
    item_fat_content VARCHAR(50),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);

SELECT * FROM sales_by_fat_content;

CREATE TABLE sales_by_item_type (
    item_type VARCHAR(100),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);


CREATE TABLE sales_by_outlet_size (
    outlet_size VARCHAR(20),
    total_sales NUMERIC
);


CREATE TABLE sales_by_location (
    outlet_location_type VARCHAR(20),
    total_sales NUMERIC
);


CREATE TABLE sales_by_establishment (
    outlet_establishment_year INT,
    total_sales NUMERIC
);


CREATE TABLE fat_content_by_outlet (
    outlet_identifier VARCHAR(50),
    item_fat_content VARCHAR(50),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);

CREATE TABLE metrics_by_outlet_type (
    outlet_type VARCHAR(50),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);





SELECT * FROM public.kpi_summary;

SELECT * FROM public.sales_by_fat_content;

SELECT * FROM public.sales_by_outlet_size;

SELECT * FROM public.sales_by_location;

SELECT * FROM public.sales_by_item_type;

SELECT * FROM public.fat_content_by_outlet;

SELECT * FROM public.sales_by_establishment;

SELECT * FROM public.metrics_by_outlet_type;


SELECT * FROM public.sales_by_item_type;


