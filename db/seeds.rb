Treatment.destroy_all
Appointment.destroy_all
Pet.destroy_all
Vet.destroy_all
Owner.destroy_all

owner1 = Owner.create(
    first_name: "Miguel",
    last_name: "de Cervantes",
    email: "mg.cervantes@hotmail.com",
    phone: "3484921020",
    address: "Enrique Mac Iver 370, Santiago, Chile"
)

owner2 = Owner.create(
    first_name: "Miguel",
    last_name: "Dorantes",
    email: "medorantes@hotmail.com",
    phone: "920394827",
    address: "Calle 13, Carabobo, Maracaibo, Venezuela"
)

owner3 = Owner.create(
    first_name: "Kim",
    last_name: "Taehyung",
    email: "k.ty@samsung.kr",
    phone: "728394021",
    address: "Avenida Grecia 2001, Ñuñoa, Santiago, Chile"
)

pet1 = owner1.pets.create(
    name: "Naafiri",
    species: "Dog",
    breed: "Dobberman",
    date_of_birth: "2004-08-16",
    weight: 49.0
)

pet2 = owner2.pets.create(
    name: "Shakira",
    species: "Dog",
    breed: "Golden Retriever",
    date_of_birth: "2010-02-02",
    weight: 40.0
)

pet3 = owner3.pets.create(
    name: "Tannie",
    species: "Dog",
    breed: "Pomeranian",
    date_of_birth: "2017-09-07",
    weight: 9.0
)

pet4 = owner3.pets.create(
    name: "Tang",
    species: "Cat",
    breed: "Black",
    date_of_birth: "2017-09-08",
    weight: 6.4
)

pet5 = owner3.pets.create(
    name: "Holly",
    species: "Dog",
    breed: "Poodle Toy",
    date_of_birth: "2017-09-09",
    weight: 6.7
)

vet1 = Vet.create(
    first_name: "Mariana",
    last_name: "Ramirez",
    email: "maramirez@gmail.com",
    phone: "993041828",
    specialization: "Vaccination"
)

vet2 = Vet.create(
    first_name: "Fernando",
    last_name: "Gonzalez",
    email: "fegonzaled@yahoo.cl",
    phone: "920195742",
    specialization: "General Medicine"
)

appointment1 = Appointment.create(
    pet: pet1,
    vet: vet1,
    date: "2026-04-11 11:30:00",
    reason: "Intestinal obstruction",
    status: 0
)

appointment2 = Appointment.create(
    pet: pet2,
    vet: vet2,
    date: "2026-10-17 20:00:00",
    reason: "Common cold",
    status: 0
)

appointment3 = Appointment.create(
    pet: pet3,
    vet: vet2,
    date: "2026-12-24 20:00:00",
    reason: "Vaccination",
    status: 3
)

appointment4 = Appointment.create(
    pet: pet4,
    vet: vet2,
    date: "2026-12-24 20:00:00",
    reason: "Vaccination",
    status: 3
)

appointment5 = Appointment.create(
    pet: pet5,
    vet: vet2,
    date: "2026-12-24 20:00:00",
    reason: "Vaccination",
    status: 3
)

Treatment.create(
  appointment: appointment1,
  name: "Abdominal stabilization",
  medication: "Omeprazole",
  dosage: "10 mg every 24 hours",
  notes: "Monitor vomiting",
  administered_at: "2026-04-11 12:00:00"
)

Treatment.create(
  appointment: appointment2,
  name: "Respiratory control",
  medication: "Amoxicillin",
  dosage: "250 mg every 12 hours",
  notes: "Rest",
  administered_at: "2026-10-17 20:30:00"
)

Treatment.create(
  appointment: appointment3,
  name: "Vaccination",
  medication: "Canine polyvalent vaccine",
  dosage: "Single dose",
  notes: "Cancelled",
  administered_at: "2026-12-24 20:00:00"
)

Treatment.create(
  appointment: appointment4,
  name: "Vaccination",
  medication: "Feline polyvalent vaccine",
  dosage: "Single dose",
  notes: "Cancelled",
  administered_at: "2026-12-24 20:00:00"
)

Treatment.create(
  appointment: appointment5,
  name: "Vaccination",
  medication: "Canine polyvalent vaccine",
  dosage: "Single dose",
  notes: "Cancelled",
  administered_at: "2026-12-24 20:00:00"
)