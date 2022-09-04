UPDATE Episode 
set Title = Title+'_CANCELLED' 
WHERE DoctorId IS NULL;