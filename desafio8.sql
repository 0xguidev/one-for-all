DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON usuarios 
FOR EACH ROW BEGIN
DELETE FROM seguindo 
WHERE
    id_usuario = OLD.id_usuario;
DELETE FROM historicos 
WHERE
    id_usuario = OLD.id_usuario;
END $$ 
DELIMITER ;
