                                          Table "public.tasks"
   Column    |              Type              | Collation | Nullable |              Default              
-------------+--------------------------------+-----------+----------+-----------------------------------
 id          | bigint                         |           | not null | nextval('tasks_id_seq'::regclass)
 user_id     | bigint                         |           | not null | 
 title       | character varying              |           |          | 
 description | text                           |           |          | 
 status      | character varying              |           |          | 
 due_date    | timestamp(6) without time zone |           |          | 
 created_at  | timestamp(6) without time zone |           | not null | 
 updated_at  | timestamp(6) without time zone |           | not null | 
Indexes:
    "tasks_pkey" PRIMARY KEY, btree (id)
    "index_tasks_on_user_id" btree (user_id)
Foreign-key constraints:
    "fk_rails_4d2a9e4d7e" FOREIGN KEY (user_id) REFERENCES users(id)
Referenced by:
    TABLE "procrastination_logs" CONSTRAINT "fk_rails_c98ebeafae" FOREIGN KEY (task_id) REFERENCES tasks(id)

