
import requests
r = requests.get('https://httpbin.org/basic-auth/user/pass')
s_city = "Moscow,RU"
appid = "b689af0c31d9d859035e6eeceed2ce09"
res = requests.get("http://api.openweathermap.org/data/2.5/weather",
             params={'q': s_city, 'units': 'metric', 'lang': 'ru', 'APPID': appid})
data = res.json()

print('Город', s_city)
print('Погодные условия за окном', data['weather'][0]['description'])
print('Температура', data['main']['temp'])
print('Минимальная темпераура',data['main']['temp_min'])
print('Максимальная температура',data['main']['temp_max'])
print('Скорость ветра',data['wind']['speed'])
print('Направление ветра',data['wind']['deg'])
print('Видимость на улице',data['visibility'])
print("__________________________________________")

res = requests.get("http://api.openweathermap.org/data/2.5/forecast",
                   params={'q': s_city, 'units': 'metric', 'lang': 'ru', 'APPID': appid})
data = res.json()
print("Прогноз погоды на неделю:")
for i in data['list']:
    print("Дата <", i['dt_txt'], "> \r\nТемпература <", '{0:+3.0f}'.format(i['main']['temp']), "> \r\nПогодные условия <", i['weather'][0]['description'], ">")
    print("____________________________")
