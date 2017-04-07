# робота з API Udacity з допомогою програми-оболонки
# та використання python-бібліотеки udacity
import udacity

c = udacity.Catalog()

tracks = c.tracks()

track_names = [t['name'] for t in tracks]
web_dev_teachers = c.instructors('cs253')
nd001_description = c.degree('nd001')['expected_learning']
print(track_names)

# спосіб роботи з API безпосередньо наданий Udacity, використовує JSON
# import json
# import urllib.request
# response = urllib.request.urlopen('https://udacity.com/public-api/v0/courses')
# json_response = json.loads(response.read().decode('utf8'))
# for course in json_response['courses']:
#     print(course['title'])
#     print(course['homepage'])
