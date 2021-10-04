DELIMITER $ $ CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON usuarios FOR EACH ROW BEGIN
delete from
  seguindo
where
  id_usuario = OLD.id_usuario;
delete from
  historicos
where
  id_usuario = OLD.id_usuario;
END $ $ DELIMITER;