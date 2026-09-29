-- =============================================================
-- Migration de sécurité (application d'une installation existante)
-- Date : 2026-09
--
-- À exécuter UNE FOIS dans phpMyAdmin (ou `mysql < migrate-security.sql`)
-- après avoir déployé le nouveau code.
--
-- Note : les mots de passe existants (hachage MD5) restent valables.
-- Ils sont convertis automatiquement en bcrypt (password_hash) à la
-- première connexion réussie de chaque compte — aucune action manuelle.
-- =============================================================

-- 1) InnoDB pour toutes les tables (transactions, clés étrangères, verrouillage ligne)
ALTER TABLE tbl_color ENGINE=InnoDB;
ALTER TABLE tbl_country ENGINE=InnoDB;
ALTER TABLE tbl_customer_message ENGINE=InnoDB;
ALTER TABLE tbl_end_category ENGINE=InnoDB;
ALTER TABLE tbl_mid_category ENGINE=InnoDB;
ALTER TABLE tbl_service ENGINE=InnoDB;
ALTER TABLE tbl_size ENGINE=InnoDB;
ALTER TABLE tbl_subscriber ENGINE=InnoDB;

-- 2) Jeux de caractères utf8mb4 (accents, emojis, symboles multilingues)
ALTER DATABASE CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

ALTER TABLE tbl_color         CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_country       CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_customer      CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_customer_message CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_end_category  CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_faq           CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_language      CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_mid_category  CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_order         CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_page          CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_payment       CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_photo         CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_post          CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_product       CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_product_color CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_product_photo CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_product_size  CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_rating        CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_service       CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_settings      CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_shipping_cost CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_shipping_cost_all CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_size          CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_slider        CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_social        CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_subscriber    CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_top_category  CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_user          CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE tbl_video         CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 3) Élargir la colonne mot de passe client (bcrypt fait ~60 caractères)
ALTER TABLE tbl_customer MODIFY cust_password VARCHAR(255) NOT NULL;
ALTER TABLE tbl_user     MODIFY password     VARCHAR(255) NOT NULL;

-- 4) Unicité de l'email client (anti-doublon à l'inscription)
--    Si des doublons existent déjà, cette requête échouera : les dédoublonner d'abord.
ALTER TABLE tbl_customer ADD UNIQUE KEY uq_customer_email (cust_email);

-- 5) Index de performance (pagination, recherche, jointures fréquentes)
CREATE INDEX idx_product_name_active ON tbl_product (p_is_active, p_name);
CREATE INDEX idx_order_payment_id    ON tbl_order (payment_id);
CREATE INDEX idx_rating_product      ON tbl_rating (p_id);
