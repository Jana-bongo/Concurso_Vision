USE concurso_vision;

-- Deletar o admin antigo (se existir)
DELETE FROM usuarios WHERE email = 'admin@concursovision.com';

-- Criar novo admin com senha "admin123"
INSERT INTO usuarios (nome, email, senha, is_admin) 
VALUES ('Administrador', 'admin@concursovision.com', 
        'scrypt:32768:8:1$rNte8mhMqLvZ3wuJ$3d2e1f0a8b9c7d6e5f4a3b2c1d0e9f8a7b6c5d4e3f2a1b0c9d8e7f6a5b4c3d2e1f0a9b8c7d6e5f4a3b2c1d0e', 
        1);

-- Verificar
SELECT id, nome, email, is_admin FROM usuarios;
USE concurso_vision;

UPDATE usuarios 
SET senha = 'scrypt:32768:8:1$oKHjgUN2AAFDxR6c$e1b027942023485632bb832477b9b23ee488cf7b733bae88e39c97a9aa310bea758c73334e94fe7e329144455e609e5eb6aece467a058f3759ec74a4c58750c8' 
WHERE email = 'admin@concursovision.com';