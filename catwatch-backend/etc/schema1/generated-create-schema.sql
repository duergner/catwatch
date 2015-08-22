create table contributor (id int8 not null, organization_id int8 not null, snapshot_date timestamp not null, name varchar(255), organization_name varchar(255), organizational_commits_count int4, organizational_projects_count int4, personal_commits_count int4, personal_projects_count int4, url varchar(255), primary key (id, organization_id, snapshot_date))
create table language_list (project_id int4 not null, language varchar(255))
create table project (id  serial not null, commits_count int4, contributors_count int4, description varchar(255), forks_count int4, git_hub_project_id int8, last_pushed varchar(255), name varchar(255), organization_name varchar(255), primary_language varchar(255), score int4, snapshot_date timestamp, stars_count int4, url varchar(255), primary key (id))
create table statistics (id int8 not null, snapshot_date timestamp not null, all_contributors_count int4, all_forks_count int4, all_size_count int4, all_stars_count int4, members_count int4, organization_name varchar(255), private_project_count int4, program_languages_count int4, public_project_count int4, tags_count int4, teams_count int4, primary key (id, snapshot_date))
alter table language_list add constraint FK_4ep3aidpq8d8kepexjt21sn5b foreign key (project_id) references project
