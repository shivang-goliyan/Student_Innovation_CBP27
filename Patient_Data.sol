// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract PatientStorage{
    struct Patient{
        uint patientId;
        string name;
        uint dob;
        uint height;
        uint weight;
        string bloodGroup;
        string enrolledTreatmentPrograms;
        string allergies;
        string vaccinations;
        string familyMedicalHistory;
    }

    mapping(address => Patient) public patients;

    function addPatient(
        address _address,
        uint _patientId,
        string _name,
        uint _dob,
        uint _height,
        uint _weight,
        string _bloodGroup,
        string _enrolledTreatmentPrograms,
        string _allergies,
        string _vaccinations,
        string _familyMedicalHistory,
    ) public {
        patients[_address] = patient(_patientId, _name, _dob, _height, _weight, _bloodGroup, _enrolledTreatmentPrograms, _allergies, _vaccinations, _familyMedicalHistory);

    }

    function getPatient(address _address) public view returns (uint, string, uint, uint, uint, string, string, string, string, string) {
        Patient memory patient = patients[_address];
        return (patient.patientId, patient.name, patient.dob, patient.height, patient.weight, patient.bloodGroup, patient.enrolledTreatmentPrograms, patient.allergies, patient.vaccinations, patient.familyMedicalHistory);
    }
}