Department.create!([
  {name: "Economics"},
  {name: "History"},
  {name: "Philosophy"},
  {name: "Political Science"},
  {name: "Sociology"},
  {name: "DSSIT"}
])
DepartmentLocation.create!([
  {department_id: 2, location_id: 3},
  {department_id: 2, location_id: 5},
  {department_id: 2, location_id: 4},
  {department_id: 6, location_id: 1},
  {department_id: 6, location_id: 2}
])
DepartmentPerson.create!([
  {department_id: 2, person_id: 1},
  {department_id: 2, person_id: 2}
])
Key.create!([
  {serial_no: "E1TF", key_class: "1", person_id: 1, issued: true},
  {serial_no: "E1TD", key_class: "1", person_id: 2, issued: true},
  {serial_no: "E1TK83", key_class: "5", person_id: 6, issued: true},
  {serial_no: "E1TK83", key_class: "4", person_id: 5, issued: true},
  {serial_no: "E1TH70", key_class: "4", person_id: 6, issued: true},
  {serial_no: "E1TH70", key_class: "1", person_id: 5, issued: true},
  {serial_no: "A1YA50", key_class: "2", person_id: 5, issued: true},
  {serial_no: "E1TK82", key_class: "10", person_id: 4, issued: true}
])
Location.create!([
  {building: "SSH", room: "130"},
  {building: "SSH", room: "131"},
  {building: "SSH", room: "2216"},
  {building: "SSH", room: "2211"},
  {building: "SSH", room: "2208"}
])
Person.create!([
  {name: "Anya Gibson", loginid: "abschwin"},
  {name: "Monica Fischer", loginid: "mlfische"},
  {name: "Kathy Miner", loginid: "keminer"},
  {name: "Janine Carlson", loginid: "jmcarlso"},
  {name: "Ben Leung", loginid: "nefful"},
  {name: "Brandon Baker", loginid: "bvbaker"}
])
PersonRole.create!([
  {person_id: 3, role_id: 2}
])
Role.create!([
  {name: "administrator"},
  {name: "keymaster"}
])
