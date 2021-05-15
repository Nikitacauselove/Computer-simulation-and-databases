# Компьютерное моделирование и базы данных

## Вложение запросов

1. Запишите запрос, который использует подзапрос для получения всех заказов покупателя с именем Cisneros. Предположим, что его персональный номер неизвестен.
2. Запишите запрос, который выдает имена и рейтинги всех тех покупателей, которые сделали больше среднего числа заказов.
3. Запишите запрос, выбирающий сумму заказов каждого продавца, у которого она превышает наибольшее значение поля amount в таблице Orders.
4. Запишите запрос, выбирающий сумму заказов каждого продавца, у которого она превышает наибольшее значение суммы заказов для двух продавцов в таблице Orders.

## Связанные подзапросы

1. Запишите команду SELECT, использующую связанные подзапросы и выбирающую имена и номера всех покупателей, рейтинг которых совпадает с максимальным значением рейтинга для их города.
2. Запишите два запроса, которые выбирают (по имени и номеру) всех продавцов, проживающих в городах, где у них нет покупателей. Один запрос должен использовать операцию соединения (join), а второй — связанные подзапросы.
3. Запишите запрос, выбирающий всех покупателей с рейтингом, равным наибольшему значению рейтинга для города Rome.

## Использование оператора EXISTS

1. Запишите запрос с EXISTS для того, чтобы извлечь всех продавцов, имеющих покупателей с рейтингом, превышающим 300.
2. Как решить ту же проблему, применяя соединение?
3. Запишите запрос с EXISTS, выбирающий всех проживающих в одном городе продавцов, а также покупателей, которых эти продавцы обслуживают.
4. Запишите запрос, извлекающий из таблицы Customers покупателя, назначенного каждому продавцу, который уже имеет по крайней мере одного покупателя (покупатель, который выбирается, не учитывается) с заявками в таблице Orders.
5. Запишите запрос, выбирающий все заказы покупателя с именем Giovanni, сделанные не у назначенного ему продавца.

## Использование операторов ANY, ALL и SOME

1. Запишите запрос, выбирающий всех покупателей, рейтинг которых равен или превосходит ANY (в смысле SQL) Serres.
2. Какие выходные данные генерирует эта команда?
3. Запишите запрос, использующий ANY или ALL, который будет находить всех продавцов, не имеющих покупателей в их городе.
4. Запишите запрос, выбирающий всех покупателей, значение поля amount которых превышает любое значение (в обычном смысле) для покупателей Лондона.
5. Запишите этот же запрос с использованием MAX.
6. Какие выходные данные генерирует запрос, использующий ANY с NULL-значениями?
7. Какие выходные данные генерирует запрос, использующий ALL с NULL-значениями?

## Использование предложения UNION

1. Создайте объединение двух запросов, которые показывают значения полей names, cities, rating для всех покупателей (customers). Те, у кого рейтинг (rating) 200 и выше, должны иметь комментарий "High Rating", все прочие — "Low Rating"
2. Запишите команду, которая выдает в качестве выходных данных значения полей name и number для каждого продавца и покупателя, имеющего более одного заказа. Результаты вывести в алфавитном порядке.
3. Сформулируйте объединение трех запросов. Первый запрос выбирает значения поля snums для всех продавцов в San Jose. Второй запрос выбирает значения поля cnums для всех покупателей в San Jose; третий запрос выбирает значения поля onums для всех заявок за 3 октября 1990. Объединение должно сохранять дубликаты для двух последних запросов, но исключать любую избыточность между каждым из них (вторым и третьим) и первым.

## Использование операторов INTERSECT, EXCEPT (MINUS)

1. Напишите объединенный запрос, который находит всех продавцов из Лондона, имеющих в Лондоне как минимум одного покупателя. Выведите номера и имена продавцов.
2. Составьте объединенный запрос, который находит всех продавцов с хотя бы одним заказом свыше $1000, сделанным покупателем из другого города. Выведите snum и cnum. Продавцы, имеющие такие заказы от нескольких покупателей, должны отображаться более одного раза.

## Введение в представления

1. Создайте представление, показывающее всех покупателей с наивысшими рейтингами.
2. Создайте таблицу, которая показывает количество продавцов в каждом городе.
3. Создайте представление, которое показывает общее и среднее количество заявок для каждого продавца после его имени. Предполагается, что все имена являются уникальными.
4. Создайте представление, которое показывает каждого продавца вместе со всеми его покупателями.

## Изменение значений с помощью представлений (дополнить)

1. Какие из представлений являются обновляемыми?
2. Создайте представление таблицы Salespeople с именем Commissions. Это представление будет включать только поля snum и comm. Для этого представления можно вводить и изменять комиссионные, но это могут быть только значения из интервала .10 и .20.
3. Некоторые SQL приложения имеют встроенные ограничения, представляющие текущую дату, иногда называемую "CURDATE". Значит слово CURDATE может использоваться в SQL-предложениях и заменяется текущей датой тогда, когда это ключевое слово применяется в командах SELECT и INSERT. Будет использоваться представление таблицы Orders, имеющее имя Entryorders и дающее возможность вставлять строки в таблицу Orders. Создайте таблицу Orders таким образом, чтобы CURDATE автоматически подставлялось в поле odate, если никакое значение не задано. Затем создайте представление Entryorders так, чтобы никакие значения не могли быть изменены.

## Введение в представления

1. Создайте представление, показывающее всех покупателей с наивысшими рейтингами.
2. Создайте таблицу, которая показывает количество продавцов в каждом городе.
3. Создайте представление, которое показывает общее и среднее количество заявок для каждого продавца после его имени. Предполагается, что все имена являются уникальными.
4. Создайте представление, которое показывает каждого продавца вместе со всеми его покупателями.

## Изменение значений с помощью представлений

1. Какие из представлений являются обновляемыми?
   #1 CREATE VIEW Dailyorders
      AS SELECT DISTINCT cnum, snum, onum, odate
          FROM Orders;
   #2 CREATE VIEW Custotals
      AS SELECT cname, SUM (amt)
        FROM Orders, Customers
        WHERE Orders.cnum = customers.cnum
        GROUP BY cname;
   #З CREATE VIEW Thirdorders
      AS SELECT *
        FROM Dailyorders
        WHERE odate = 10/03/1990;
   #4 CREATE VIEW Nullcities
      AS SELECT snum, sname, city
        FROM Salespeople
        WHERE city IS NULL
        OR sname BETWEEN 'A' AND 'MZ';
2. Создайте представление таблицы Salespeople с именем Commissions. Это представление
будет включать только поля snum и comm. Для этого представления
можно вводить и изменять комиссионные, но это могут быть только значения из
интервала .10 и .20.
3. Некоторые SQL приложения имеют встроенные ограничения, представляющие
текущую дату, иногда называемую "CURDATE". Значит слово CURDATE может
использоваться в SQL-предложениях и заменяется текущей датой тогда, когда
это ключевое слово применяется в командах SELECT и INSERT. Будет
использоваться представление таблицы Orders, имеющее имя Entryorders и дающее
возможность вставлять строки в таблицу Orders. Создайте таблицу Orders таким
образом, чтобы CURDA ТЕ автоматически подставлялось в поле odate, если
никакое значение не задано. Затем создайте представление Entryorders так, чтобы
никакие значения не могли быть изменены.
