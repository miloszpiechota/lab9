# Zadanie 2

## Konfiguracja łańcucha CI dla usługi Github Actions.

## [Link do repozytorium DockerHub](https://hub.docker.com/repository/docker/miloszpiechota/lab9/general)


### Stworzenie repozytorium github 

![image](https://github.com/miloszpiechota/lab9/assets/161620373/ca19032e-0010-4f10-a475-f1b8090362bf)


### Zdefiniowanie zmiennej i sekretu

![image](https://github.com/miloszpiechota/lab9/assets/161620373/2a32af74-e230-4754-914f-9aa657ee3371)


### Wyświetlania listy dostępnych workflow dla repozytorium GitHub

![image](https://github.com/miloszpiechota/lab9/assets/161620373/c8e3f4c5-3da2-41dd-84bc-3575f918463f)


### Dodanie do pliku gha_example.yml możliwości testowania obrazu pod kątem podatności na zagrożenia w oparciu o usługę Docker Scout. Akcja docker/scoutaction@v1, która umożliwia przeprowadzenie analizy podatności obrazu Docker. Przeprowadzane jest porównanie obrazu z wersją produkcyjną. Flaga only-severities określa, że poziomy criticial i high będą uwzględniane w raporcie. GITHUB_TOKEN to sekret który umożliwia dostęp do repozytorium github.
 
![image](https://github.com/miloszpiechota/lab9/assets/161620373/c1df1e6f-ef3d-4daf-bc22-fcb97ea31d57)


### Uruchomienie workflow

`gh workflow run`


![image](https://github.com/miloszpiechota/lab9/assets/161620373/80283714-dca5-42d0-a22c-7b54092dd974)


### Przeglądanie szczegółowych informacji o wybranym uruchomieniu workflow 

`gh run view`

![image](https://github.com/miloszpiechota/lab9/assets/161620373/6df72c9a-c494-459f-8e3c-ec8302a61973)

### Tworzenie nowego tagu w repozytorium git i wysłanie utworoznego tagu do repozytorium github.

![image](https://github.com/miloszpiechota/lab9/assets/161620373/3a76f642-26fa-4019-a632-b019c43f9e86)


### Uruchomienie monitorowania postępu


![image](https://github.com/miloszpiechota/lab9/assets/161620373/f77a5925-0a20-4955-a3ec-cc5d84f60505)


### Wynik działania aplikacji

![image](https://github.com/miloszpiechota/lab9/assets/161620373/3b07bdef-ae8d-424c-b4d4-4f2951fb5d18)

![image](https://github.com/miloszpiechota/lab9/assets/161620373/a3bec286-c7d1-4730-b075-e58286c2be84)

![image](https://github.com/miloszpiechota/lab9/assets/161620373/ccb3c5e8-0eea-49dc-991d-12327c803bd7)





