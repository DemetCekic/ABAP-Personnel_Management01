# ZDC_PERSONNEL_MANAGEMENT

This SAP ABAP project is a basic personnel data management application that demonstrates classical ABAP techniques. It utilizes internal tables, user input processing, and classic Dynpro screens, along with an ALV Grid display to offer a user-friendly interface for managing personnel records efficiently.

## Features

- Create new personnel records (name, department, salary, etc.)
- Update and delete existing records
- Display records using ALV Grid
- Basic report program structure with `WRITE`, `LOOP`, `READ TABLE`
- Dropdown fields for nationality and status
- Long text input using TEXTEDIT control
- Tabstrip interface for organized screen layout
- Input validation and error messages
- Modular structure using INCLUDE programs

## Project Structure

| MAIN                     | Description                            |
|--------------------------|----------------------------------------|
| ZPERSONEL_MANAGEMENT     | Main report program                    |

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

![Main Screen](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/Main_Screen-01.png?raw=true)


#### Personnel Management Main Screen Error
 ![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/Error1.jpg?raw=true).
 

### Add/Edit/Delete Personnel
---
#### Add/Edit Personnel
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/Add_Pers.jpg?raw=true).

#### Delete Personnel
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/Del_Pers.jpg?raw=true).


#### Update the Table 
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/Updated_Table.jpg?raw=true).


### Updated Personnel Table
---
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/Pers_Table.jpg?raw=true).


## Author

Developed by Demet Çekiç.
demetcekic@gmail.com 
