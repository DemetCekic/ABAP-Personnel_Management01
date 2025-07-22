
# SAP - ABAP | PERSONNEL MANAGEMENT PROJECT
---
## ZDC_PERSONNEL_MANAGEMENT

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

![Main Screen](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM01_Main_Scrn.jpg?raw=true)

![Main Screen](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM02_Main_Screen_SE51.jpg?raw=true)
 

### Add/Edit/Delete Personnel
---
#### Add/Edit Personnel
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM03_Add_Personnel.jpg?raw=true).


#### Delete Personnel
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM04_Del_Personnel.jpg?raw=true).


#### Update the Table 
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM05_Updated_Pers_Table.jpg?raw=true).


### Updated Personnel Table
---
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM06_Persnnel_Table.jpg?raw=true).

### Errors
---
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM07_Error_01.jpg?raw=true).
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM08_Error_02.jpg?raw=true).
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM09_Error_03.jpg?raw=true).
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM10_Error_04.jpg?raw=true).
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM11Error_05.jpg?raw=true).
![Image Alt](https://github.com/DemetCekic/ABAP-Personnel_Management01/blob/main/IM12_Error_06.jpg?raw=true).


---
## Author

**Demet Çekiç** – SAP ABAP Developer / Architect
-  [demetcekic@gmail.com](mailto:demetcekic@gmail.com)  
-  [LinkedIn](https://www.linkedin.com/in/demet-cekic) | [GitHub](https://github.com/DemetCekic)

Feel free to get in touch for collaboration or feedback!

## License

This project is licensed under the [MIT License](LICENSE).



