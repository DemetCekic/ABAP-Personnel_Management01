
# SAP - ABAP | PERSONNEL MANAGEMENT PROJECT
---
## ZDC_PERSONNEL_MANAGEMENT

This SAP ABAP project is a basic personnel data management application that demonstrates classical ABAP techniques. It utilizes internal tables, user input processing, and classic Dynpro screens, along with an ALV Grid display to offer a user-friendly interface for managing personnel records efficiently.

## Features

- Personnel record management (Add, Update, Delete)
- Classic Dynpro screen design
- ALV Grid display
- Modularization with Includes
- Custom validations and F4 help


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

## How to Run

1. Import the project into your SAP system using abapGit.
2. Make sure the custom table `ZDC_PSID_DT` is created.
3. Activate all includes and the main report `ZDC_PERSONNEL_MANAGEMENT`.
4. Run the program via transaction `SE38`.


## Screenshots

### Personnel Management Main Screen

![Image](https://github.com/user-attachments/assets/708b3d6f-c405-4c1e-b386-ee5c40041667)

![Image](https://github.com/user-attachments/assets/a7dc17e3-4b3f-4791-93f4-728499b9663a)
 

### Add/Edit/Delete Personnel
---
#### Add/Edit Personnel
![Image](https://github.com/user-attachments/assets/e18fc08b-4d7f-4c7e-93d4-b792b0e6b708)


#### Delete Personnel
![Image](https://github.com/user-attachments/assets/96ad18c8-4be2-4cf3-8981-c1d20266206e)


#### Update the Table 
![Image](https://github.com/user-attachments/assets/9920f398-c52e-4d96-9189-ec1645cd15ed)


### Updated Personnel Table
---
![Image](https://github.com/user-attachments/assets/5b644172-c4bb-42d9-ba68-b262c67e56ab)

### Errors
---
![Image](https://github.com/user-attachments/assets/29ed6b15-6419-42a0-bd3a-50fa760fcbb8)

![Image](https://github.com/user-attachments/assets/89e12358-a6ba-4094-af0d-e45082c0b021)

![Image](https://github.com/user-attachments/assets/4d9a6572-38c6-46c8-86ff-01663228729e)

![Image](https://github.com/user-attachments/assets/91dc7781-1105-4564-8871-2a762adb37ad)

![Image](https://github.com/user-attachments/assets/d9a6f883-d55a-40a4-a596-9c0eddc4c9ca)

![Image](https://github.com/user-attachments/assets/b37b54ff-cfcb-47c7-9669-83128701b8b9)


---
## Author

**Demet Çekiç** – SAP ABAP Developer / Architect
-  [demetcekic@gmail.com](mailto:demetcekic@gmail.com)  
-  [LinkedIn](https://www.linkedin.com/in/demet-cekic) | [GitHub](https://github.com/DemetCekic)

Feel free to get in touch for collaboration or feedback!

## License

This project is licensed under the [MIT License](LICENSE).



