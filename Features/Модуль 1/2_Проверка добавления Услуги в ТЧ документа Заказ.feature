﻿#language: ru

@tree

Функционал: проверка указания количества по типу товара Услуга в ТЧ документа Заказ 

Как Менеджер по продажам я хочу
заполнить ТЧ документа Заказ типом товара - Услуга
чтобы проверить отсутствие падения системы при указании количества в данной строке

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка указания количества по типу товара Услуга в ТЧ документа Заказ
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000036' | 'Услуги'       |
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000037' | 'Доставка'       |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
Тогда таблица "Товары" стала равной:
	| 'Товар'    | 'Цена'   | 'Количество' | 'Сумма'  |
	| 'Доставка' | '200,00' | '3'           | '600,00' |
И в таблице "Товары" я выбираю текущую строку
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
