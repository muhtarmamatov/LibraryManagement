INSERT INTO users (user_id, name, username, password)
VALUES (1, 'Admin User', 'admin', '$2a$10$G.GaM7nbEG/v74S4.n7S9.Sd.dsfUegF1ugoZKFrq5faduwoqPGry'),
       (2, 'Simple User', 'user','$2a$10$G.GaM7nbEG/v74S4.n7S9.Sd.dsfUegF1ugoZKFrq5faduwoqPGry');

INSERT INTO role(role_id, role_name) VALUES (1, 'Admin'), (2,'User');

INSERT INTO user_role(user_id, role_id) VALUES(1,1),(2,2)