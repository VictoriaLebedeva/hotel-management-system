# Vision & Scope Document 

## 1. Business Requirements

### 1.1. Background

Traveling and business trips accompany people every day, so it is important for hotels to have an information system that could provide fast and high-quality service to visitors.

Valmont is a hotel chain, which owns 10 hotels in the country. It uses on old decentralized information system. This leads to huge wastes of the businesses resources in terms of costs and efforts. The company’s customer satisfaction index is falling as compared to their competitors.

New system allows to connect all the hotels into one network, which is easier to manage. It will make booking process faster and convinient and reporting will help to improve marketing strategy. 

### 1.2 Business Opportunity

The goal is to develop a CRM and BI systems, which allow visitors to create and cancel reservation and managers to make effective decisions in hotel mananagement.

### 1.3 Business objectives

1. To make the process of booking more efficient so as to raise the customer satisfaction index.

2. To improve the marketing strategy that will be the result of the increase in profits.


### 1.4 Success criteria

* SC-1: Increase in customer satisfaction index by 40% after 6 month.
* SC-2: Increase in the number of guests by 30%.

### 1.5 Vision statement

For people who want to book a hotel room without unnecessary action, this informational system will provide fast and comfortable booking process. This system will provide up-to-date information about available rooms in all hotels of the chain, as well as quickly book the desired room.

Also, the system will help managers and marketers to make decisions with reporting, which will contain analytics on attendance, based on which can improve the business model, which will lead to increased profits.

### 1.6 Busines risks

* RI-1: At first, the reports will be uninformative, because there will not be enough data.  
* RI-2: The ease of booking and cancellations can cause people to cancel at the last minute, taking away the opportunity from those who really intended to check into a hotel.


## 2. Scope and limitations

### 2.1 Main functions

MF-1: Get list of all available rooms;  
MF-2: Get list of the rooms according to the filter;  
MF-3: Create a reservation;  
MF-4: Cancel reservation;  
MF-5: Generate a report for a given period of time.


### 2.2 Scope of initial and subsequent releases

**Release 1 (fully implemented)**  
MF-1: Get list of all available rooms;  
MF-2: Get list of the rooms according to the filter;  
MF-3: Create a reservation;  
MF-4: Cancel reservation;  

**Release 2 (fully implemented)**  
MF-5: Generate a report for a given period of time.

(хотя лучше это сделать в виде таблички) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

### 2.4 Limitations and exclusions

LI-1: You cannot book several rooms for different dates at the same time.

## 3. Business Context

### 3.1 Stackholders Profiles

| Заинтересованное лицо        | Основная ценность                                                                                           | Отношение                                                                                                                           | Основные интересы                                                                             | Ограничения                                                                                                           |
|------------------------------|-------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| Руководство компании         | Увеличение производительности труда сотрудников; сокращение затрат в кафетерии                              | Сильная поддержка вплоть до выпуска 2; поддержка выпуска 3, в зависимости от результатов предыдущих выпусков                        | Экономия расходов должна превысить затраты на разработку и использование                      | Не определены                                                                                                         |
| Сотрудники кафетерия         | Более эффективное использование рабочего времени сотрудников в течение дня; большее удовлетворение клиентов | Озабоченность взаимоотношениями с профсоюзом и возможным сокращением персонала; в остальном — все воспринимается нормально          | Сохранение рабочих мест                                                                       | Необходимость обучения сотрудников работе с Интернетом; необходимость в персонале и транспорте для доставки           |
| Постоянные клиенты кафетерия | Лучший выбор блюд; экономия времени; удобство                                                               | Большой энтузиазм, но могут использовать систему меньше, чем ожидается, из-за социальной значимости обедов в кафетерии и ресторанах | Простота использования; надежность доставки; возможность выбора блюд                          | Необходимость доступа к корпоративной интрасети, к Интернету или требуется мобильное устройство                       |
| Отдел расчета зарплаты       | Отсутствие какой-либо выгоды; необходимость создания схемы удержания стоимости заказов из зарплаты          | Не особо счастливы относительно предстоящей работы над ПО, но понимают ценность для компании и сотрудников                          | Минимум изменений в текущих приложениях расчета зарплаты                                      | Еще не выделено никаких ресурсов на изменение ПО                                                                      |
| Менеджеры ресторанов         | Увеличение продаж; выходна новые области рынка для привлечения новых клиентов                               | Увеличение продаж; выход на новые области рынка для привлечения новых клиентов                                                      | Минимум новых технологий; озабоченность ресурсами и затратами, необходимыми для доставки блюд | Могут не иметь персонала и возможностей для обработки нужных объемов заказов; не у всех меню представлены в Интернете |



### 3.2 Приоритеты проекта ###

```
Чтобы принимать эффективные решения, заинтересованные лица должны
договориться о приоритетах проекта. Один из подходов к этому заключается
в рассмотрении пяти измерений: функции (или объем), качество, график, за-
траты и кадры. В любом проекте каждое из этих измерений
относится к одной из трех категорий:

* ограничение — сдерживающий фактор, в рамках которого должен опери-
ровать менеджер проекта;
* ведущий фактор — важный фактор успеха, ограниченно гибкий при из-
менениях;
* степень свободы — возможность для менеджера проекта до определен-
ной степени менять измерение и балансировать относительно других из-
мерений.
```

### 3.3 Особенности развертывания ###

```
Перечислите информацию и действия, необходимые для обеспечения эф-
фективного развертывания решения в рабочую среду. Опишите доступ, ко-
торый потребуется пользователями для работы с системой, в частности, на-
ходятся ли они далеко в разных часовых поясах или недалеко друг от друга.
Укажите, когда пользователям в разных местах нужен доступ к системе. Если
требуются изменения инфраструктуры, чтобы обеспечить потребности ПО в
мощностях, доступе к сети, хранилищу данных и миграции данных, опишите
эти изменения. Зафиксируйте всю информацию, которая потребуется тем,
кто будет готовить бизнес-процессы обучения и модификации в связи с раз-
вертыванием нового решения.

Пример:

ПО веб-сервера нужно обновить до последней версии. В рамках второго вы-
пуска нужно разработать приложения для смартфорнов и планшетов под
управлением iOS и Android, а в третьем выпуске нужно выпустить приложе-
ния для смартфонов и планшетов с Windows Phone. К моменту готовности
второго выпуска все соответствующие изменения должны быть выполнены.
Нужно разработать видеоролики длительностью не более пяти минут, обу-
чающие пользователей работе с интернет-версией и приложениями системы
Cafeteria Ordering System.
```