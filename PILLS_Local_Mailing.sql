--Column 1, Local
select top 500 
	patient.PatientSSN,
	patient.PatientName,
	PharmPatient.MailPreference

from
	lsv.Patient.PharmacyPatient as  PharmPatient
	inner join lsv.SPatient.SPatient as patient
		on patient.PatientSID = PharmPatient.PatientSID 

where  
	PharmPatient.sta3n = '612'
	and patient.DeceasedFlag = 'N'
	and patient.TestPatientFlag is null
	and patient.PatientName not like 'zz%'
	and PharmPatient.MailPreference like 'local%'

--Column 2, Not local
select top 500 
	patient.PatientSSN,
	patient.PatientName,
	PharmPatient.MailPreference

from
	lsv.Patient.PharmacyPatient as  PharmPatient
	inner join lsv.SPatient.SPatient as patient
		on patient.PatientSID = PharmPatient.PatientSID 

where  
	PharmPatient.sta3n = '612'
	and patient.DeceasedFlag = 'N'
	and patient.TestPatientFlag is null
	and patient.PatientName not like 'zz%'
	and PharmPatient.MailPreference not like 'local%'