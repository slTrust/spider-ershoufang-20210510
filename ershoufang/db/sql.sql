CREATE DATABASE IF NOT EXISTS lianjia
  CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci

create table app_house(
  id bigint primary key auto_increment,
  house_type varchar(100),
  `floor` varchar(100),
  cover_area decimal(10,2),
  house_struct varchar(100),
  inside_area varchar(100),

  build_type varchar(100),
  orientation varchar(100),
  build_struct varchar(100),
  redecorated varchar(100),
  ladder_household_ratio varchar(100),

  heating_mode varchar(100),
  is_elevator varchar(100),
  property varchar(100),
  use_water_type varchar(100),
  electricity_type varchar(100),

  listing_date date,
  trade_right varchar(100),
  last_transaction date,
  house_use varchar(100),
  house_years varchar(100),

  property_owner varchar(100),
  mortgage_info varchar(100),
  spare_parts varchar(100),

  total_price decimal(10,2),
  square_metre_price decimal(10,2),
  district varchar(100),
  address varchar(100),
  city varchar(100),

  area varchar(100),
  street varchar(100)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

truncate app_house;

cd ~/mysql_data

docker run -v "$PWD/data":/var/lib/mysql --name my-mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=lianjia -p 3306:3306 -d mysql:5.7.27