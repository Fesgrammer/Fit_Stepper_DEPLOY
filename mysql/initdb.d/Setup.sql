create database fit_stepper;
use fit_stepper;

create user fitstepperapi identified by 'fsapi9301';
grant all on fit_stepper.* to fitstepperapi;

/*部位一覧の登録*/
create table bui(
    bui_id int not null auto_increment,
    bui_name varchar(50),
    primary key (bui_id)
);

/**【追加】部位を追加***/
insert into bui (bui_name) values ("上腕2");
insert into bui (bui_name) values ("上腕3");
insert into bui (bui_name) values ("胸");
insert into bui (bui_name) values ("腹筋");
insert into bui (bui_name) values ("肩");
insert into bui (bui_name) values ("背中");
insert into bui (bui_name) values ("お尻");
insert into bui (bui_name) values ("太もも");
insert into bui (bui_name) values ("ふくらはぎ");

/*種目一覧の登録*/
create table event(
    event_id int not null auto_increment,
    event_name varchar(50),
    primary key (event_id)
);

/**【追加】種目を追加***/
insert into event (event_name) values ("ベンチプレス");
insert into event (event_name) values ("プッシュアップ");
insert into event (event_name) values ("チンニング");
insert into event (event_name) values ("ベントオーバーロウ");
insert into event (event_name) values ("ダンベルショルダープレス");
insert into event (event_name) values ("サイドレイズ");
insert into event (event_name) values ("フレンチプレス");
insert into event (event_name) values ("キックバック");
insert into event (event_name) values ("ハンマーカール");
insert into event (event_name) values ("ダンベルカール");
insert into event (event_name) values ("クランチ");
insert into event (event_name) values ("ロシアンツイスト");
insert into event (event_name) values ("スクワット");
insert into event (event_name) values ("ブリアリガンスクワット");
insert into event (event_name) values ("フロントスクワット");
insert into event (event_name) values ("ハックスクワット");
insert into event (event_name) values ("カーフレイズ");
insert into event (event_name) values ("シッテドカーフレイズ");

/*運動記録管理テーブルの作成*/
create table motion(
    motion_id int not null auto_increment,
    user_id int not null,
    bui_id int not null,
    event_id int not null,
    amount int not null,
    date date not null,
    primary key (motion_id)
);

/*レベル管理テーブルの作成*/
create table level(
    revel_id int not null auto_increment,
    bui_id int not null,
    level int not null,
    amount int not null,
    primary key (revel_id)
);

/****【追加】レベルを追加　values(bui_id, level, 運動量)　50づつ運動量が増える****/
insert into level (bui_id, level, amount) values (1, 1, 50);
insert into level (bui_id, level, amount) values (1, 2, 100);
insert into level (bui_id, level, amount) values (1, 3, 150);
insert into level (bui_id, level, amount) values (1, 4, 200);
insert into level (bui_id, level, amount) values (2, 1, 50);
insert into level (bui_id, level, amount) values (2, 2, 100);
insert into level (bui_id, level, amount) values (2, 3, 150);
insert into level (bui_id, level, amount) values (2, 4, 200);
insert into level (bui_id, level, amount) values (3, 1, 50);
insert into level (bui_id, level, amount) values (3, 2, 100);
insert into level (bui_id, level, amount) values (3, 3, 150);
insert into level (bui_id, level, amount) values (3, 4, 200);
insert into level (bui_id, level, amount) values (4, 1, 50);
insert into level (bui_id, level, amount) values (4, 2, 100);
insert into level (bui_id, level, amount) values (4, 3, 150);
insert into level (bui_id, level, amount) values (4, 4, 200);
insert into level (bui_id, level, amount) values (5, 1, 50);
insert into level (bui_id, level, amount) values (5, 2, 100);
insert into level (bui_id, level, amount) values (5, 3, 150);
insert into level (bui_id, level, amount) values (5, 4, 200);
insert into level (bui_id, level, amount) values (6, 1, 50);
insert into level (bui_id, level, amount) values (6, 2, 100);
insert into level (bui_id, level, amount) values (6, 3, 150);
insert into level (bui_id, level, amount) values (6, 4, 200);
insert into level (bui_id, level, amount) values (7, 1, 50);
insert into level (bui_id, level, amount) values (7, 2, 100);
insert into level (bui_id, level, amount) values (7, 3, 150);
insert into level (bui_id, level, amount) values (7, 4, 200);
insert into level (bui_id, level, amount) values (8, 1, 50);
insert into level (bui_id, level, amount) values (8, 2, 100);
insert into level (bui_id, level, amount) values (8, 3, 150);
insert into level (bui_id, level, amount) values (8, 4, 200);
insert into level (bui_id, level, amount) values (9, 1, 50);
insert into level (bui_id, level, amount) values (9, 2, 100);
insert into level (bui_id, level, amount) values (9, 3, 150);
insert into level (bui_id, level, amount) values (9, 4, 200);

create table user(
    user_id int not null auto_increment,
    name varchar(30) not null,
    pass varchar(255) not null,
    jouwan_two_level int not null,
    jouwan_two_amt int not null,
    jouwan_th_level int not null,
    jouwan_th_amt int not null,
    chest_level int not null,
    chest_amt int not null,
    ads_level int not null,
    ads_amt int not null,
    shoulder_level int not null,
    shoulder_amt int not null,
    back_level int not null,
    back_amt int not null,
    hip_level int not null,
    hip_amt int not null,
    thigh_level int not null,
    thigh_amt int not null,
    calf_level int not null,
    calf_amt int not null,
    primary key (user_id)
);

