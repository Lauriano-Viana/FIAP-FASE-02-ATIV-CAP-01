# FIAP-FASE-02-ATIV-CAP-01


# Automatizando o agro

This project aims to develop a database system for storing and analyzing sensor data from an agricultural setting. The goal is to optimize the application of products and water to crops by leveraging data-driven insights.


## To achieve this, we will need to collect the following data:

    Water Application:
        Date and time of application
        Quantity of water applied
    Soil pH:
        Date and time of measurement
        pH value
    Other relevant sensor data:
        Temperature, humidity, etc.
## Entities and Attributes:

    Sensor:
        id_sensor (int, PK)
        tipo_sensor (varchar)
        descrição (varchar)
    Leitura:
        id_leitura (int, PK)
        data_hora (date)
        valor (double)
        id_sensor (int, FK)
    Aplicação:
        id_aplicacao (int, PK)
        data_hora (date)
        quantidade_aplicada (double)
        tipo_aplicacao (varchar)
    Cultura:
        id_cultura (int, PK)
        nome_cultura (varchar)
        ciclo (int)
    Area:
        id_area (int, PK)
        tamanho (double)
        id_cultura (FK)

## Cardinality and Relationships:

    A sensor can have many readings (1:N).
    An area can have many applications (1:N).
    A culture can be present in many areas  (1:N).
    An application is related to one area and one culture (N:1).