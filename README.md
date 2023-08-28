# Shake and Sip

Приложение для просмотра актуальных коктейлей и их приготовления. 

## Диаграмма экранов

![image](https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/401fba77-9882-4f91-a9a8-ea46e20863ca)


## Функционал

1. Пользователь регистрируется/авторизовывается в приложении (Firebase).
2. В главном меню отображаются все коктейли, подтянутые из API: https://rapidapi.com/rapihub-rapihub-default/api/the-cocktail-db3.
3. При выборе конкретного коктейля, выводится вся информация о нем, с возможностью добавить в избранное.
4. Избранные коктейли сохраняются в локальную базу HIVE.
5. При отключенном от сети, авторизованном пользователе, происходит переход к уже сохраненным локально избранным коктейлям.
6. В меню настроек можно изменить пароль, выйти из аккаунта (Firebase).

## Стэк-технологий

* Flutter 3.10.6
* Dart 3.0.6
* Flutter bloc
* Freezed
* Dio
* Screenutil
* Hive
* GoRouter
* FirebaseCore/FirebaseAuth
* Internet Connectivity Checker

## Пользовательский интерфейс

### Окна логирования

| Окно регистрации | Окно авторизации |
| --- | --- |
|<img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/ba038d1e-527a-435f-a40d-480c53d91488" width="300" /> | <img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/6322d3f3-6103-47b1-81f7-b0e6ce3d2e57" width="300" /> |

### Домашняя страница, все коктейли
<img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/e9e70309-d093-4c7e-8c91-9a362a9e6026" width="300" />

### Подробно о выбранном коктейле

| Время, сервировка | Шаги приготовления | Ингредиенты |
| --- | --- | --- |
| <img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/52120abb-0563-4776-8aea-d223579d63f9" width="300" /> | <img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/53c48786-67b0-44ab-816c-dfb019659f0c" width="300" /> | <img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/90eb8cea-b90f-498c-99f4-d0509141c959" width="300" /> |

### Страница любимых коктейлей
<img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/d8070673-73fc-481d-97f9-4262a6568bef" width="300" />

### Страница настроек
<img src="https://github.com/DelayStepback/shake_and_sip_app/assets/79159215/05627e5d-24c8-4131-8a42-92e96070ef3e" width="300" />
