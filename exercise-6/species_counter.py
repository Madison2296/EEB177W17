bird_file = open("/home/eeb177-student/Desktop/eeb-177/homework/formatted_eBird.csv", encoding="ISO-8859-15")
import collections
bird_dict = {}
families = []
bird_file.readline()
for line in bird_file:
    items = line.split(',')
    species = items[3]
    family = items[7].split(' ')[0].replace('"', '')
    families.append(family)

num_species = collections.Counter(families)
print(num_species)
    
bird_file.close()
