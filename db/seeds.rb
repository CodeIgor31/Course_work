require 'faker'
require 'date'
Faker::Config.locale = :ru
# full_name = Faker::Name.female_middle_name
# puts full_name

# Inserting into disciplines
# arr = %w(Аккаунтинг
# Аграрные_науки
# Акушерство
# Алгебра
# Алгоритмы_и_структуры_данных
# Анатомия
# Английский_язык
# Античная_философия
# Антропология
# Арбитражный_процесс
# Археология
# Архитектура
# Астрология
# Астрономия
# Аудит
# Банковское_дело
# Безопасность_жизнедеятельности
# Белорусский_язык
# Библиотековедение
# Биология
# Биомедицинская_инженерия
# Биотехнология
# Ботаника
# Бухгалтерский_учет_и_аудит
# Введение_в_программирование
# Ветеринария
# Вещественное_право
# Визуальные_искусства
# Военное_дело
# Военно-морской_флот
# Высшая_математика
# География
# Геодезия
# Геология
# Геополитика
# Геотехническое_строительство
# Геофизика
# Германские_языки
# Гидравлика
# Гидрология
# Государственное_управление
# Гражданское_право
# Графический_дизайн
# Греческий_язык
# Делопроизводство
# Демография
# Деньги_и_кредит
# Детская_психология
# Дизайн_интерьера
# Дизайн_одежды
# Дизайн_обуви
# Динамика_и_прочность_машин
# Дискретная_математика
# Документоведение_и_архивоведение
# Драматургия
# Духовные_науки
# Духовное_искусство
# Духовный_мир_человека
# Журналистика
# Зарубежная_литература
# Зарубежная_история
# Защита_информации
# Землеустройство
# Земледелие
# Зоология
# Инвестиции
# Инженерная_графика
# Инженерная_геодезия
# Инженерная_педагогика
# Инженерная_физика
# Инженерное_дело
# Инженерное_проектирование
# Инновационный_менеджмент
# Институциональная_экономика
# Инструментальное_дело
# Информатика
# Информационная_безопасность
# Информационные_системы
# Информационные_технологии
# Иностранные_языки
# Интеллектуальная_собственность
# Инфокоммуникации
# Искусственный_интеллект
# Искусство
# Испанский_язык
# История
# История_государства_и_права
# История_культуры
# История_науки_и_техники
# История_педагогики_и_образования
# История_философии
# Картография
# Кинематика
# Кино_и_телевидение
# Киноискусство
# Китайский_язык
# Комбинаторика
# Коммуникационные_системы
# Компьютерная_графика
# Компьютерная_лингвистика
# Компьютерная_техника
# Компьютерные_науки
# Конкурентное_право
# Конституционное_право
# Контроль_и_ревизия
# Корпоративное_право
# Косметология
# Криминалистика
# Криминология
# Криптография
# Криптология
# Культурология
# Ландшафтное_проектирование
# Латинский_язык
# Лесное_дело
# Лесопарковое_дело
# Лесоводство
# Лингвистика
# Линейная_алгебра
# Литература
# Литературоведение
# Логика
# Логистика
# Логопедия
# Макроэкономика
# Маркетинг
# Математика
# Математическая_логика
# Математическая_статистика
# Материаловедение
# Медиакоммуникации
# Медицина
# Международное_право
# Международные_отношения
# Менеджмент
# Металловедение
# Металлообработка
# Метрология_и_измерительная_техника
# Микроэкономика
# Микробиология
# Микропроцессорная_техника
# Мировая_экономика
# Многомерный_статистический_анализ
# Моделирование_социальных_процессов
# Молекулярная_биология
# Монтаж_и_эксплуатация_промышленного_оборудования
# Музыка
# Музыковедение
# Налоговое_право
# Нанотехнологии
# Народное_хозяйство
# Начертательная_геометрия
# Научно-исследовательская_работа
# Научные_основы_физической_культуры_и_спорта
# Небесная_механика
# Немецкий_язык
# Неорганическая_химия
# Неотложная_медицинская_помощь
# Нефтегазовое_дело
# Общая_биология
# Общая_и_теоретическая_физика
# Общая_лингвистика
# Общая_психология
# Общественная_безопасность
# Общественная_история
# Общественная_психология
# Обществознание
# Общеэкономическая_теория
# Общие_принципы_строительства
# Объектно-ориентированное_программирование
# Олимпийское_движение
# Операционные_системы
# Операционный_менеджмент
# Оптика
# Оптоэлектроника
# Организация_автомобильных_перевозок
# Организация_и_управление_производством
# Организация_предпринимательской_деятельности
# Организация_труда_и_управление_персоналом
# Организация_туризма
# Организационная_культура
# Основания_права
# Основы_бухгалтерского_учета
# Основы_геодезии
# Основы_дизайна
# Основы_здорового_образа_жизни
# Основы_истории
# Основы_инженерной_психологии
# Основы_информатики
# Основы_менеджмента
# Основы_научных_исследований
# Основы_правовых_знаний
# Основы_проектирования_вентиляционных_систем
# Основы_регионального_экономического_развития
# Основы_рекламы_и_PR
# Основы_социальной_работы
# Основы_страхования
# Основы_теории_организации
# Основы_теории_электрических_цепей
# Основы_управления
# Основы_экологии
# Основы_экономики
# Основы_экономической_теории
# Основы_электротехники
# Основы_энергосбережения
# Основы_языкознания
# Отопление,_вентиляция_и_кондиционирование_воздуха
# Охрана_окружающей_среды
# Охрана_труда
# Палеонтология
# Парикмахерское_искусство
# Патентоведение
# Педагогика
# Переводоведение
# Перспективы_развития_экономики
# Пищевые_технологии
# Платежные_системы_и_банковское_дело
# Планирование_городской_среды
# Планирование_эксперимента
# Планирование_экономической_деятельности
# Планирование,_организация_и_проведение_научных_исследований
# Планирование,_организация_и_управление_строительными_процессами
# Поведенческая_экономика
# Полиграфия
# Политика_и_государство
# Политическая_экономия
# Политические_науки
# Право
# Правоведение
# Правовое_регулирование_экономики
# Правоохранительная_деятельность
# Практика_в_профессиональной_деятельности
# Практика_перевода
# Практика_преподавания
# Практика_производства
# Практика_программирования
# Практика_социальной_работы
# Практика_управления
# Право_человека
# Правовое_обеспечение_бизнеса
# Программирование
# Программирование_на_Java
# Программирование_на_Python
# Программирование_на_C++
# Программирование_на_PHP
# Программирование_на_Ruby
# Программирование_на_JavaScript
# Программное_обеспечение
# Проектирование_баз_данных
# Проектирование_зданий_и_сооружений
# Проектирование_информационных_систем
# Проектирование_интерьера
# Проектирование_машин_и_оборудования
# Проектирование_строительных_конструкций
# Проектирование_технологических_процессов
# Проектирование_электронных_устройств
# Проектирование_электросетей_и_систем_электроснабжения
# Промышленная_безопасность
# Промышленная_экология
# Промышленные_технологии
# Промышленный_дизайн
# Промышленный_маркетинг
# Психиатрия
# Психолингвистика
# Психология
# Психология_личности
# Психология_общения
# Психология_развития
# Психология_труда
# Психология_управления
# Психотерапия
# Психофизиология
# Публичная_политика
# Радиоэлектроника
# Развитие_бизнеса
# Развитие_лидерских_качеств
# Разработка_бизнес-стратегий
# Разработка_игр
# Разработка_программного_обеспечения
# Разработка_сайтов
# Разработка_социальных_проектов
# Развитие_творческого_мышления
# Расчет_и_конструирование_машинных_элементов
# Расчет_конструкций
# Расчеты_и_проектирование_железобетонных_конструкций
# Расчеты_и_проектирование_стальных_конструкций
# Региональная_экономика
# Региональные_исследования
# Реклама_и_PR
# Религиоведение
# Ремонт_и_обслуживание_автомобилей
# Репетиторство
# Реставрация_и_сохранение_культурного_наследия
# Рисование
# Риторика
# Робототехника
# Розничная_торговля
# Русский_язык_как_иностранный
# Рынок_ценных_бумаг
# Садоводство_и_огородничество
# Самосовершенствование
# Санитарно-гигиенические_мероприятия
# Сельское_хозяйство
# Сертификация_и_стандартизация
# Сетевое_администрирование
# Системное_администрирование
# Системное_мышление
# Системы_автоматического_управления
# Системы_связи_и_безопасности
# Системы_электроснабжения
# Складское_хозяйство
# Славистика
# Социальная_антропология
# Социальная_работа
# Социальная_статистика
# Социальная_философия
# Социальные_коммуникации
# Социолингвистика
# Социология
# Специальная_педагогика
# Спортивная_медицина
# Спортивная_психология
# Спортивные_технологии
# Стандарты_качества
# Статистика
# Стратегический_менеджмент
# Страхование
# Строительная_механика
# Строительство_и_эксплуатация_зданий_и_сооружений
# Судебная_медицина
# Судебная_психиатрия
# Судебная_экспертиза
# Судовождение_и_управление_судами
# Судостроение
# Сурдопедагогика
# Таможенное_дело
# Театральное_искусство
# Теология
# Теоретическая_грамматика
# Теоретическая_механика
# Теоретическая_физика
# Теория_алгоритмов
# Теория_информации
# Теория_игр
# Теория_культуры
# Теория_массовой_коммуникации
# Теория_международных_отношений
# )
# arr.each do |el|
#   sql = "INSERT INTO disciplines (name) VALUES ('#{el}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

# Inserting into persons
# flag = 1
# 20000.times do
#     role_id = "S"
#     case flag
#     when 1
#       first_name = Faker::Name.male_first_name
#       last_name = Faker::Name.male_last_name
#       patronymic = Faker::Name.male_middle_name
#       flag = 0
#     when 0
#       first_name = Faker::Name.female_first_name
#       last_name = Faker::Name.female_last_name
#       patronymic = Faker::Name.female_middle_name
#       flag = 1
#     end
#   sql = "INSERT INTO persons (first_name , second_name , patronymic , role_id ) VALUES ('#{first_name}', '#{last_name}', '#{patronymic}', '#{role_id}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end
# p 'Person ready'

#Inserting into Teachers
# presql = "select * from persons where role_id = 'T'"
# res = ActiveRecord::Base.connection.exec_query(presql)
# res.each do |hash|
#   sql = "INSERT INTO teachers (person_id) VALUES ('#{hash["id"]}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into Students
# presql = "select * from persons where role_id = 'S' and id > 301000 "
# res = ActiveRecord::Base.connection.exec_query(presql)
# i = 1
# year = 2008
# quota = ["B", "P"]
# date = ["#{year}-08-17", "#{year}-08-20"]
# res.each do |pers|
#   # if i > 20000
#   #   i = 1
#   #   year -= 1
#   #   date = ["#{year}-08-17", "#{year}-08-20"]
#   # end
#   q = quota.sample
#   if q == "P"
#     d = "#{year}-08-27"
#   else 
#     d = date.sample 
#   end
#   sql = "insert into students (person_id, date_of_entering, quota) VALUES ('#{pers["id"]}', '#{d}', '#{q}')"
#   ActiveRecord::Base.connection.exec_query(sql)
#   i += 1
# end

# p 'Students rdy'
# Inserting into Teachers/Disciplines
# tsql = "select * from teachers"
# teachers = ActiveRecord::Base.connection.exec_query(tsql)
# dsql = "select * from disciplines"
# disciplines = ActiveRecord::Base.connection.exec_query(dsql)
# t_mas = []
# d_mas = []
# teachers.each do |el|
#   t_mas.push(el["id"])
# end
# disciplines.each do |el|
#   d_mas.push(el["id"])
# end
# # i = 0
# # k = 0
# 100.times do
#   # if k > 346
#   #   k = 0
#   # end
#   sql = "insert into teachers_disciplines (teacher_id, discipline_id, status) values('#{t_mas.sample}', '#{d_mas.sample}', false)"
#   ActiveRecord::Base.connection.exec_query(sql)
#   # i += 1
#   # k += 1
# end


#Inserting into questions
# i = 1
# k = 1
# 18000.times do
#   question = Faker::Lorem.unique.question
#   if i > 50
#     i = 1
#     k += 1
#     part = "A"
#     ans = Faker::Lorem.word
#     mark = 8
#   elsif i > 30
#     part = "B"
#     ans = "Проверяется преподавателем"
#     mark = 22
#   else
#     part = "A"
#     ans = Faker::Lorem.word
#     mark = 8
#   end
#   discipline_id = k
#   i += 1
#   sql = "INSERT INTO questions (question, part, answer, mark, discipline_id) VALUES ('#{question}', '#{part}', '#{ans}', '#{mark}', '#{discipline_id}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into variants
# k = 1
# 347.times do
#   testsql = "select * from questions where discipline_id = '#{k}' and part = 'A'"
#   fullsql = "select * from questions where discipline_id = '#{k}' and part = 'B'" 
#   res = ActiveRecord::Base.connection.exec_query(testsql)
#   full = ActiveRecord::Base.connection.exec_query(fullsql)
#   testres = []
#   fullres = []
#   @var_name = ""
#   res.each {|el| testres.push(el["id"])}
#   full.each {|el| fullres.push(el["id"])}
#   name = "select * from disciplines where id = '#{k}'"
#   name_res = ActiveRecord::Base.connection.exec_query(name)
#   name_res.each do |el|
#     @var_name = el["name"] + '_'
#   end
#   i = 1
#   m = 0
#   n = 0
#   30.times do
#     @var_name = @var_name + "#{i}"
#     sql = "INSERT INTO variants (question_1 , question_2, var_name) VALUES ('#{testres[m]}','#{fullres[n]}', '#{@var_name}')  "
#     ActiveRecord::Base.connection.exec_query(sql)
#     m += 1
#     n += 1
#     if m > testres.size-1
#       m = 0
#     end
#     if n > fullres.size-1
#       n = 0
#     end
#     @var_name = @var_name[0..-"#{i}".size-1]
#     i += 1
#   end
#   k += 1
# end


# Inserting into attempts
#   @year = 2008
#   k = 1
#   while k <= 4 do
#   presql = "SELECT * FROM students where (date_of_entering = '#{@year}-08-17' or date_of_entering = '#{@year}-08-20' or date_of_entering = '#{@year}-08-27') and status = true"
#   res = ActiveRecord::Base.connection.exec_query(presql)

#   res.each do |student| 
#     4.times do 
#       date_win = Faker::Date.between(from: "#{@year+k}-01-15", to: "#{@year+k}-01-25")

#       dissql = "select * from disciplines order by random() limit 1"
#       res_dis = ActiveRecord::Base.connection.exec_query(dissql)
#       res_dis.each {|el| @dis = el["id"]}

#       tdsql = "select * from teachers_disciplines where discipline_id = '#{@dis}' order by random() limit 1"
#       res_td = ActiveRecord::Base.connection.exec_query(tdsql)
#       res_td.each {|el| @td = el["id"]}

#       qesql = "select * from questions where discipline_id = '#{@dis}' order by random() limit 1"
#       resqe = ActiveRecord::Base.connection.exec_query(qesql)
#       resqe.each {|el| @qest_id = el["id"]}

#       varsql = "select * from variants where question_1 = '#{@qest_id}' or question_2 = '#{@qest_id}' order by random() limit 1"
#       resvar = ActiveRecord::Base.connection.exec_query(varsql)
#       resvar.each {|el| @var = el["id"]}

#       mark = rand(2..5)
#       sql = "INSERT INTO attempts (student_id , variant_id, teacher_discipline_id, attempt_num, mark, date_of_exam) VALUES ('#{student["id"]}', '#{@var}', '#{@td}', 1, '#{mark}', '#{date_win}')  "
#       ActiveRecord::Base.connection.exec_query(sql)
#     end
#   end

#   sec_sql = "select * from attempts, students where attempt_num = '1' and mark = '2' and students.id = attempts.student_id and students.date_of_entering between '#{@year}-08-17' and '#{@year}-08-27' and date_of_exam between '#{@year+k}-01-15' and '#{@year+k}-01-25'"
#   res_sec = ActiveRecord::Base.connection.exec_query(sec_sql)
#   res_sec.each do |el| 
#     mark = rand(2..5)
#     year, month, day = el["date_of_exam"].split('-').map(&:to_i)
#     date_test = Date.new(year, month, day) + 30
#     date_of_exam = date_test.strftime('%Y-%m-%d')
#     sql = "INSERT INTO attempts (student_id , variant_id, teacher_discipline_id, attempt_num, mark, date_of_exam) VALUES ('#{el["student_id"]}', '#{el["variant_id"]}', '#{el["teacher_discipline_id"]}', 2, '#{mark}', '#{date_of_exam}')  "
#     ActiveRecord::Base.connection.exec_query(sql)
#   end

#   third_sql = "select * from attempts, students where attempt_num = '2' and mark = '2' and students.id = attempts.student_id and students.date_of_entering between '#{@year}-08-17' and '#{@year}-08-27' and date_of_exam between '#{@year+k}-01-31' and '#{@year+k}-02-25'"
#   res_third = ActiveRecord::Base.connection.exec_query(third_sql)
#   res_third.each do |el| 
#     mark = rand(2..5)
#     year, month, day = el["date_of_exam"].split('-').map(&:to_i)
#     date_test = Date.new(year, month, day) + 30
#     date_of_exam = date_test.strftime('%Y-%m-%d')
#     sql = "INSERT INTO attempts (student_id , variant_id, teacher_discipline_id, attempt_num, mark, date_of_exam) VALUES ('#{el["student_id"]}', '#{el["variant_id"]}', '#{el["teacher_discipline_id"]}', 3, '#{mark}', '#{date_of_exam}')  "
#     ActiveRecord::Base.connection.exec_query(sql)
#   end

#   otchisl = "select * from attempts where attempt_num = '3' and mark = '2' and date_of_exam between '#{@year+k}-03-01' and '#{@year+k}-03-31'"
#   res_otchs = ActiveRecord::Base.connection.exec_query(otchisl)
#   res_otchs.each do |el| 
#     sql = "update students set status = 'false' where id = '#{el["student_id"]}'"
#     ActiveRecord::Base.connection.exec_query(sql)
#   end


#   presql = "SELECT * FROM students where (date_of_entering = '#{@year}-08-17' or date_of_entering = '#{@year}-08-20' or date_of_entering = '#{@year}-08-27') and status = true"
#   res = ActiveRecord::Base.connection.exec_query(presql)

#   res.each do |student| 
#     4.times do 
#       date_sum = Faker::Date.between(from: "#{@year+k}-06-12", to: "#{@year+k}-06-29")

#       dissql = "select * from disciplines order by random() limit 1"
#       res_dis = ActiveRecord::Base.connection.exec_query(dissql)
#       res_dis.each {|el| @dis = el["id"]}

#       tdsql = "select * from teachers_disciplines where discipline_id = '#{@dis}' order by random() limit 1"
#       res_td = ActiveRecord::Base.connection.exec_query(tdsql)
#       res_td.each {|el| @td = el["id"]}

#       qesql = "select * from questions where discipline_id = '#{@dis}' order by random() limit 1"
#       resqe = ActiveRecord::Base.connection.exec_query(qesql)
#       resqe.each {|el| @qest_id = el["id"]}

#       varsql = "select * from variants where question_1 = '#{@qest_id}' or question_2 = '#{@qest_id}' order by random() limit 1"
#       resvar = ActiveRecord::Base.connection.exec_query(varsql)
#       resvar.each {|el| @var = el["id"]}

#       mark = rand(2..5)
#       sql = "INSERT INTO attempts (student_id , variant_id, teacher_discipline_id, attempt_num, mark, date_of_exam) VALUES ('#{student["id"]}', '#{@var}', '#{@td}', 1, '#{mark}', '#{date_sum}')  "
#       ActiveRecord::Base.connection.exec_query(sql)
#     end
#   end

#   sec_sql = "select * from attempts, students where attempt_num = '1' and mark = '2' and students.id = attempts.student_id and students.date_of_entering between '#{@year}-08-17' and '#{@year}-08-27' and date_of_exam between '#{@year+k}-06-12' and '#{@year+k}-06-29'"
#   res_sec = ActiveRecord::Base.connection.exec_query(sec_sql)
#   res_sec.each do |el| 
#     mark = rand(2..5)
#     year, month, day = el["date_of_exam"].split('-').map(&:to_i)
#     date_test = Date.new(year, month, day) + 30
#     date_of_exam = date_test.strftime('%Y-%m-%d')
#     sql = "INSERT INTO attempts (student_id , variant_id, teacher_discipline_id, attempt_num, mark, date_of_exam) VALUES ('#{el["student_id"]}', '#{el["variant_id"]}', '#{el["teacher_discipline_id"]}', 2, '#{mark}', '#{date_of_exam}')  "
#     ActiveRecord::Base.connection.exec_query(sql)
#   end

#   third_sql = "select * from attempts, students where attempt_num = '2' and mark = '2' and students.id = attempts.student_id and students.date_of_entering between '#{@year}-08-17' and '#{@year}-08-27' and date_of_exam between '#{@year+k}-07-12' and '#{@year+k}-07-29'"
#   res_third = ActiveRecord::Base.connection.exec_query(third_sql)
#   res_third.each do |el| 
#     mark = rand(2..5)
#     year, month, day = el["date_of_exam"].split('-').map(&:to_i)
#     date_test = Date.new(year, month, day) + 30
#     date_of_exam = date_test.strftime('%Y-%m-%d')
#     sql = "INSERT INTO attempts (student_id , variant_id, teacher_discipline_id, attempt_num, mark, date_of_exam) VALUES ('#{el["student_id"]}', '#{el["variant_id"]}', '#{el["teacher_discipline_id"]}', 3, '#{mark}', '#{date_of_exam}')  "
#     ActiveRecord::Base.connection.exec_query(sql)
#   end

#   otchisl = "select * from attempts where attempt_num = '3' and mark = '2' and date_of_exam between '#{@year+k}-08-01' and '#{@year+k}-08-31'"
#   res_otchs = ActiveRecord::Base.connection.exec_query(otchisl)
#   res_otchs.each do |el| 
#     sql = "update students set status = 'false' where id = '#{el["student_id"]}'"
#     ActiveRecord::Base.connection.exec_query(sql)
#   end
# k += 1
# end

# delsql = "delete from students where person_id between 241001 and 261000"
# #delsql = "select * from students where date_of_entering between '2023-01-01' and '2023-12-31' "
# res = ActiveRecord::Base.connection.exec_query(delsql)
# res.each do |el|
#   sql = "delete from students where id = '#{el["id"]}'"
#   ActiveRecord::Base.connection.exec_query(sql)
#   p 'OK'
# end



#300 150 50

#FIXING VAR_NUM
# i = 1
# 20000.times do 
#   presql = "select * from variants where var_num > 20" 
#   res = ActiveRecord::Base.connection.exec_query(presql)
#   res.each do |hash|
#     if hash["var_num"]%20 != 0
#       hash["var_num"] = hash["var_num"]%20
#       sql = "update variants set var_num = '#{hash["var_num"]}' where id = '#{i}'"
#     elsif hash["var_num"]%20 == 0
#       hash["var_num"] = 20
#       sql = "update variants set var_num = '#{hash["var_num"]}' where id = '#{i}'"
#     end
#     ActiveRecord::Base.connection.exec_query(sql)
#     i += 1
#   end
# end

# FIXING ROLES
  # presql = "select * from persons where role_id = 'S'" 
  # res = ActiveRecord::Base.connection.exec_query(presql)
  # res.each do |hash|
  #     sql = "update persons set role_id = 'Студент' where id = '#{hash["id"]}'"
  #     ActiveRecord::Base.connection.exec_query(sql)
  # end

      # sql = "update students set quota = 'Платное' where quota = 'P'"
      # ActiveRecord::Base.connection.exec_query(sql)

#fixing otchisl
# i = 0
# presql = "select * from students, attempts where students.id = attempts.student_id and attempts.attempt_num = 3 and attempts.mark = 2"
# res = ActiveRecord::Base.connection.exec_query(presql)
# res.each do |el|
#   date = el["date_of_exam"].split('-')
#   month = date[1]
#   month == "08" ? date_of_otch = "#{date[0]}-09-03" : date_of_otch = "#{date[0]}-04-03"
#   i += 1
#   sql = "update students set date_of_otchislenie = '#{date_of_otch}' where students.id = '#{el["student_id"]}'"
#   ActiveRecord::Base.connection.exec_query(sql)
# end
# p i
