# ZDC_PERSONNEL_MANAGEMENT

This project is a basic personnel management application developed in SAP ABAP. It uses classic Dynpro screens and ALV Grid to provide a user-friendly interface for managing personnel records.

## Features

- Create new personnel records
- Update and delete existing records
- Display records using ALV Grid
- Dropdown fields for nationality and status
- Long text input using TEXTEDIT control
- Tabstrip interface for organized screen layout
- Input validation and error messages
- Modular structure using INCLUDE programs

## Project Structure

| INCLUDE                  | Description                            |
|--------------------------|----------------------------------------|
| ZDC_PERS_DATA_DEF        | Data and type declarations             |
| ZDC_PERS_SELECTION       | Selection screen parameters            |
| ZDC_PERS_SCREEN_LOGIC    | Screen modules and logic               |
| ZDC_PERS_EVENT_LOGIC     | PBO and PAI events                     |
| ZDC_PERS_ALV             | ALV display logic                      |
| ZDC_PERS_FORMS           | Helper FORM routines                   |

## Technologies Used

- ABAP (procedural structure)
- SAP GUI (SE51 screen painter)
- ALV Grid (CL_GUI_ALV_GRID)
- Tabstrip control
- abapGit for version control

## Installation & Usage

1. Import the project into your SAP system using abapGit.
2. Make sure the custom table `ZDC_PSID_DT` is created.
3. Activate all includes and the main report `ZDC_PERSONNEL_MANAGEMENT`.
4. Run the program via transaction `SE38`.

## Screenshots

### Personnel Management Main Screen

![Main Screen](screenshots/main_screen.png)

### Add/Edit/Delete Personnel

![Add Personnel](screenshots/add_personnel.png)

### Updated Personnel Table

![Updated Personnel Table](screenshots/updated_personnel_table.png)


## Author

Developed by Demet Çekiç.
