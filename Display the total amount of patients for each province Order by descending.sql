
SELECT pro.province_name, COUNT(p.patient_id) AS patient_count
FROM province_names pro
         JOIN patients p ON pro.province_id = p.province_id
GROUP BY pro.province_name
ORDER BY patient_count DESC;