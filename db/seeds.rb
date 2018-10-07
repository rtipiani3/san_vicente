if Area.all.count == 0
  areas = Area.create([{ name: 'triaje', description: '-' }, { name: 'exámen médico', description: '-' }, { name: 'radiología', description: '-' }, { name: 'oftalmología', description: '-' }, { name: 'neumología', description: '-' }, { name: 'otorrinolaringología', description: '-' }, { name: 'odontología', description: '-' }, { name: 'psicología', description: '-' }, { name: 'laboratorio', description: '-' }, { name: 'cardiología', description: '-' }])
end

#Áreas
triaje = Area.find_by(name:'triaje')
examen_medico = Area.find_by(name:'exámen médico')
radiologia = Area.find_by(name:'radiología')
oftalmologia = Area.find_by(name:'oftalmología')
neumologia = Area.find_by(name:'neumología')
otorrinolaringologia = Area.find_by(name:'otorrinolaringología')
odontologia = Area.find_by(name:'odontología')
psicologia = Area.find_by(name:'psicología')
laboratorio = Area.find_by(name:'laboratorio')
cardiologia = Area.find_by(name:'cardiología')

if TypeExam.all.count == 0
  #exámenes
  TypeExam.create(area_id:examen_medico.id ,name: 'Ficha músculo esquelética', view: 'muscle_tab_skeletal')
  TypeExam.create(area_id:examen_medico.id ,name: 'C.A.M.O', view: 'camo')
  TypeExam.create(area_id:examen_medico.id ,name: 'Resumen exámen ocupacional', view: 'occupational_health_summary')
  TypeExam.create(area_id:examen_medico.id ,name: 'exámen médico', view: 'medical_exam')
  TypeExam.create(area_id:examen_medico.id ,name: 'exámen físico', view: 'physical_exam')
  TypeExam.create(area_id:examen_medico.id ,name: 'evaluación ergonómica', view: 'ergonomic_evaluation')
  TypeExam.create(area_id:radiologia.id ,name: 'radiología tórax (lectura simple)', view: 'simple_reading_torax')
  TypeExam.create(area_id:radiologia.id ,name: 'radiología tórax (lectura OIT 2000)', view: 'reading_2000_oit')
  TypeExam.create(area_id:radiologia.id ,name: 'radiografía lateral de los pulmones', view: 'lateral_of_lungs')
  TypeExam.create(area_id:radiologia.id ,name: 'radiografía lumbosacro (frente y lateral)', view: 'lumbosacral')
  TypeExam.create(area_id:oftalmologia.id ,name: 'exámen oftalmológico', view: 'test_ophthalmology')
  TypeExam.create(area_id:oftalmologia.id ,name: 'estereopsis (visión de profundidad)', view: 'stereopsis')
  TypeExam.create(area_id:neumologia.id ,name: 'espirometría', view: 'spirometry')
  TypeExam.create(area_id:otorrinolaringologia.id ,name: 'audiometría', view: 'audiometry')
  TypeExam.create(area_id:odontologia.id ,name: 'exámen odontológico (odontograma)', view: 'odontogram')
  TypeExam.create(area_id:psicologia.id ,name: 'evaluación psicológica', view: 'psychological_evaluation')
  TypeExam.create(area_id:laboratorio.id ,name: 'descarte de embarazo en sangre', view: 'discard_pregnancy')
  TypeExam.create(area_id:laboratorio.id ,name: 'grupo y factor sanguíneo', view: 'blood_factor')
  TypeExam.create(area_id:laboratorio.id ,name: 'glucosa', view: 'glucose')
  TypeExam.create(area_id:laboratorio.id ,name: 'hemograma completo automatizado', view: 'complete_blood_count')
  TypeExam.create(area_id:laboratorio.id ,name: 'exámen completo de orina', view: 'urine_test')
  TypeExam.create(area_id:laboratorio.id ,name: 'exámen de bk', view: 'bk_exam')
  TypeExam.create(area_id:laboratorio.id ,name: 'exámen parasitológico', view: 'parasitological_examination')
  TypeExam.create(area_id:laboratorio.id ,name: 'exámen inflamatoria', view: 'inflammatory_test')
  TypeExam.create(area_id:laboratorio.id ,name: 'coprocultivo', view: 'stool')
  TypeExam.create(area_id:laboratorio.id ,name: 'hepatitis A', view: 'hepatitis_a')
  TypeExam.create(area_id:laboratorio.id ,name: 'eosinófilos en esputo', view: 'eosinophils_in_sputum')
  TypeExam.create(area_id:laboratorio.id ,name: 'colesterol total', view: 'total_cholesterol')
  TypeExam.create(area_id:laboratorio.id ,name: 'triglicéridos', view: 'triglycerides')
  TypeExam.create(area_id:laboratorio.id ,name: 'perfil lipidico', view: 'lipidic_profile')
  TypeExam.create(area_id:laboratorio.id ,name: 'creatinina', view: 'creatinine')
  TypeExam.create(area_id:laboratorio.id ,name: 'transaminasas', view: 'transaminases')
  TypeExam.create(area_id:laboratorio.id ,name: 'colinesterasa', view: 'cholinesterase')
  TypeExam.create(area_id:laboratorio.id ,name: 'VDRL o RPR', view: 'vdrl_or_rpr')
  TypeExam.create(area_id:laboratorio.id ,name: 'descarte de bruselas', view: 'discarding_brussels')
  TypeExam.create(area_id:laboratorio.id ,name: 'descarte de salmonella', view: 'discard_of_salmonella')
  TypeExam.create(area_id:laboratorio.id ,name: 'estafilococo', view: 'staphylococcus')
  TypeExam.create(area_id:laboratorio.id ,name: 'antígeno prostático', view: 'prostatic_antigen')
  TypeExam.create(area_id:cardiologia.id ,name: 'electrocardiograma', view: 'electrocardiogram')
  TypeExam.create(area_id:psicologia.id ,name: 'test de fatiga y somnolencia', view: 'fatigue_test')
  TypeExam.create(area_id:psicologia.id ,name: 'test de estrés', view: 'stress_test')
  TypeExam.create(area_id:examen_medico.id ,name: 'test estructural de altura', view: 'height_test')
  TypeExam.create(area_id:laboratorio.id ,name: 'dosaje de medicamentos', view: 'medication_dosage')
  TypeExam.create(area_id:laboratorio.id ,name: 'perfil toxicológico', view: 'toxicological_profile')
  TypeExam.create(area_id:laboratorio.id ,name: 'dosaje en sangre', view: 'blood_measurement')
  TypeExam.create(area_id:laboratorio.id ,name: 'magneso', view: 'magnesium')
  TypeExam.create(area_id:laboratorio.id ,name: 'hierro', view: 'iron')
  TypeExam.create(area_id:laboratorio.id ,name: 'papanicolau', view: 'papanicolau')
  TypeExam.create(area_id:laboratorio.id ,name: 'imovax DT', view: 'imovax_dt')
  TypeExam.create(area_id:psicologia.id ,name: 'test de personalidad', view: 'personality_test')
  TypeExam.create(area_id:psicologia.id ,name: 'test de epworth', view: 'epworth_test')
end
