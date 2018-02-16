#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: mat_conso
#------------------------------------------------------------

CREATE TABLE mat_conso(
        id_mat_conso        int (11) Auto_increment  NOT NULL ,
        nom                 Varchar (25) ,
        code_barres         Varchar (25) ,
        id_site_de_stockage Int NOT NULL ,
        PRIMARY KEY (id_mat_conso )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: site_de_stockage
#------------------------------------------------------------

CREATE TABLE site_de_stockage(
        id_site_de_stockage int (11) Auto_increment  NOT NULL ,
        adresse             Varchar (250) ,
        nom                 Varchar (25) ,
        id_site             Int NOT NULL ,
        PRIMARY KEY (id_site_de_stockage )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: projet
#------------------------------------------------------------

CREATE TABLE projet(
        id_projet        int (11) Auto_increment  NOT NULL ,
        intitule         Varchar (25) NOT NULL ,
        date_debut       Date NOT NULL ,
        date_fin_estimee Date NOT NULL ,
        date_fin_reelle  Date ,
        budget           DECIMAL (15,3)  NOT NULL ,
        problematique    Varchar (250) NOT NULL ,
        PRIMARY KEY (id_projet )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: mat_non_conso
#------------------------------------------------------------

CREATE TABLE mat_non_conso(
        id_mat_non_conso int (11) Auto_increment  NOT NULL ,
        nom              Varchar (25) ,
        etat             Enum ("disponible","indisponible","en_utilisation") ,
        id_salle         Int NOT NULL ,
        PRIMARY KEY (id_mat_non_conso )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: rese_mat_non_conso
#------------------------------------------------------------

CREATE TABLE rese_mat_non_conso(
        id_rese_mat_non_conso  int (11) Auto_increment  NOT NULL ,
        etat_demande           Enum ("en_cours","validee","refusee") NOT NULL ,
        date_debut_utilisation Date NOT NULL ,
        date_fin_utilisation   Date NOT NULL ,
        date_reservation       Date ,
        date_decision          Date ,
        quantite               Int NOT NULL ,
        id_personnel           Int NOT NULL ,
        id_mat_non_conso       Int NOT NULL ,
        id_personnel_1         Int NOT NULL ,
        id_projet              Int NOT NULL ,
        PRIMARY KEY (id_rese_mat_non_conso )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: thematique
#------------------------------------------------------------

CREATE TABLE thematique(
        id_thematique int (11) Auto_increment  NOT NULL ,
        libelle       Varchar (250) ,
        PRIMARY KEY (id_thematique )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: salle
#------------------------------------------------------------

CREATE TABLE salle(
        id_salle int (11) Auto_increment  NOT NULL ,
        nom      Varchar (25) ,
        id_site  Int NOT NULL ,
        PRIMARY KEY (id_salle )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: personnel
#------------------------------------------------------------

CREATE TABLE personnel(
        id_personnel   int (11) Auto_increment  NOT NULL ,
        nom            Varchar (25) ,
        prenom         Varchar (25) ,
        adresse        Varchar (250) ,
        date_naissance Date ,
        estActif       Bool NOT NULL ,
        PRIMARY KEY (id_personnel )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: demande_mat_conso
#------------------------------------------------------------

CREATE TABLE demande_mat_conso(
        id_demande_mat_conso int (11) Auto_increment  NOT NULL ,
        etat_demande         Enum ("en_cours","validee","refusee") NOT NULL ,
        date_utilisation     Date NOT NULL ,
        date_demande         Date NOT NULL ,
        date_decision        Date ,
        quantite             Int NOT NULL ,
        id_personnel         Int NOT NULL ,
        id_personnel_1       Int NOT NULL ,
        id_mat_conso         Int NOT NULL ,
        id_projet            Int NOT NULL ,
        PRIMARY KEY (id_demande_mat_conso )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: identificateur
#------------------------------------------------------------

CREATE TABLE identificateur(
        id_identificateur int (11) Auto_increment  NOT NULL ,
        login             Varchar (25) NOT NULL ,
        mdp               Varchar (25) NOT NULL ,
        profil            Enum ("administrateur","acteur","responsable","agent_non_consommable","agent_consommable") NOT NULL ,
        actif             Bool NOT NULL ,
        id_personnel      Int NOT NULL ,
        PRIMARY KEY (id_identificateur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: site
#------------------------------------------------------------

CREATE TABLE site(
        id_site     int (11) Auto_increment  NOT NULL ,
        nom         Varchar (25) ,
        adresse     Varchar (250) ,
        code_postal Int ,
        ville       Varchar (25) ,
        PRIMARY KEY (id_site )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: personnel_projet
#------------------------------------------------------------

CREATE TABLE personnel_projet(
        fonction     Enum ("responsable","acteur") NOT NULL ,
        id_projet    Int NOT NULL ,
        id_personnel Int NOT NULL ,
        PRIMARY KEY (id_projet ,id_personnel )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appartenir
#------------------------------------------------------------

CREATE TABLE appartenir(
        id_thematique Int NOT NULL ,
        id_projet     Int NOT NULL ,
        PRIMARY KEY (id_thematique ,id_projet )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: gerer
#------------------------------------------------------------

CREATE TABLE gerer(
        id_personnel     Int NOT NULL ,
        id_mat_non_conso Int NOT NULL ,
        PRIMARY KEY (id_personnel ,id_mat_non_conso )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: manager
#------------------------------------------------------------

CREATE TABLE manager(
        id_personnel Int NOT NULL ,
        id_mat_conso Int NOT NULL ,
        PRIMARY KEY (id_personnel ,id_mat_conso )
)ENGINE=InnoDB;

ALTER TABLE mat_conso ADD CONSTRAINT FK_mat_conso_id_site_de_stockage FOREIGN KEY (id_site_de_stockage) REFERENCES site_de_stockage(id_site_de_stockage);
ALTER TABLE site_de_stockage ADD CONSTRAINT FK_site_de_stockage_id_site FOREIGN KEY (id_site) REFERENCES site(id_site);
ALTER TABLE mat_non_conso ADD CONSTRAINT FK_mat_non_conso_id_salle FOREIGN KEY (id_salle) REFERENCES salle(id_salle);
ALTER TABLE rese_mat_non_conso ADD CONSTRAINT FK_rese_mat_non_conso_id_personnel FOREIGN KEY (id_personnel) REFERENCES personnel(id_personnel);
ALTER TABLE rese_mat_non_conso ADD CONSTRAINT FK_rese_mat_non_conso_id_mat_non_conso FOREIGN KEY (id_mat_non_conso) REFERENCES mat_non_conso(id_mat_non_conso);
ALTER TABLE rese_mat_non_conso ADD CONSTRAINT FK_rese_mat_non_conso_id_personnel_1 FOREIGN KEY (id_personnel_1) REFERENCES personnel(id_personnel);
ALTER TABLE rese_mat_non_conso ADD CONSTRAINT FK_rese_mat_non_conso_id_projet FOREIGN KEY (id_projet) REFERENCES projet(id_projet);
ALTER TABLE salle ADD CONSTRAINT FK_salle_id_site FOREIGN KEY (id_site) REFERENCES site(id_site);
ALTER TABLE demande_mat_conso ADD CONSTRAINT FK_demande_mat_conso_id_personnel FOREIGN KEY (id_personnel) REFERENCES personnel(id_personnel);
ALTER TABLE demande_mat_conso ADD CONSTRAINT FK_demande_mat_conso_id_personnel_1 FOREIGN KEY (id_personnel_1) REFERENCES personnel(id_personnel);
ALTER TABLE demande_mat_conso ADD CONSTRAINT FK_demande_mat_conso_id_mat_conso FOREIGN KEY (id_mat_conso) REFERENCES mat_conso(id_mat_conso);
ALTER TABLE demande_mat_conso ADD CONSTRAINT FK_demande_mat_conso_id_projet FOREIGN KEY (id_projet) REFERENCES projet(id_projet);
ALTER TABLE identificateur ADD CONSTRAINT FK_identificateur_id_personnel FOREIGN KEY (id_personnel) REFERENCES personnel(id_personnel);
ALTER TABLE personnel_projet ADD CONSTRAINT FK_personnel_projet_id_projet FOREIGN KEY (id_projet) REFERENCES projet(id_projet);
ALTER TABLE personnel_projet ADD CONSTRAINT FK_personnel_projet_id_personnel FOREIGN KEY (id_personnel) REFERENCES personnel(id_personnel);
ALTER TABLE appartenir ADD CONSTRAINT FK_appartenir_id_thematique FOREIGN KEY (id_thematique) REFERENCES thematique(id_thematique);
ALTER TABLE appartenir ADD CONSTRAINT FK_appartenir_id_projet FOREIGN KEY (id_projet) REFERENCES projet(id_projet);
ALTER TABLE gerer ADD CONSTRAINT FK_gerer_id_personnel FOREIGN KEY (id_personnel) REFERENCES personnel(id_personnel);
ALTER TABLE gerer ADD CONSTRAINT FK_gerer_id_mat_non_conso FOREIGN KEY (id_mat_non_conso) REFERENCES mat_non_conso(id_mat_non_conso);
ALTER TABLE manager ADD CONSTRAINT FK_manager_id_personnel FOREIGN KEY (id_personnel) REFERENCES personnel(id_personnel);
ALTER TABLE manager ADD CONSTRAINT FK_manager_id_mat_conso FOREIGN KEY (id_mat_conso) REFERENCES mat_conso(id_mat_conso);
