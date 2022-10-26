-- Validate the topological relationship between Distritos and ParquesUC
CREATE TRIGGER Distritos_ParquesUC_Intersects_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'ParquesUC', 'geom', 'intersects');

-- Validate the topological relationship between Distritos and Trilhos
CREATE TRIGGER Distritos_Trilhos_Contains_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'Trilhos', 'geom', 'contains');

-- Validate the topological relationship between Distritos and Hidrografia
CREATE TRIGGER Distritos_Hidrografia_Contains_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'Hidrografia', 'geom', 'contains');

-- Validate the topological relationship between Distritos and Vias
CREATE TRIGGER Distritos_Vias_Contains_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'Vias', 'geom', 'contains');

-- Validate the topological relationship between Distritos and Denuncias
CREATE TRIGGER Distritos_Denuncias_Contains_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'Denuncias', 'geom', 'contains');

-- Validate the topological relationship between Distritos and LancamentoImobiliarios
CREATE TRIGGER Distritos_LancamentoImobiliari_Contains_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'LancamentoImobiliarios', 'geom', 'contains');

-- Validate the topological relationship between Distritos and MassaDAgua
CREATE TRIGGER Distritos_MassaDAgua_Contains_insert_update_trigger
  AFTER INSERT OR UPDATE ON Distritos
  FOR EACH STATEMENT
  EXECUTE PROCEDURE ast_spatialrelationship('Distritos', 'geom', 'MassaDAgua', 'geom', 'contains');

-- Validate the spatial aggregation between the whole Municipios and the part Distritos
CREATE TRIGGER val_spa_agr_Municipios_Distritos
AFTER INSERT OR UPDATE OR DELETE ON Distritos
   FOR EACH STATEMENT
   EXECUTE PROCEDURE ast_aggregation('Distritos', 'geom', 'Municipios', 'geom');

   
