## import module
from numpy import ERR_DEFAULT, ERR_LOG, ERR_PRINT, ERR_RAISE
from requests import get
from time import sleep
import csv
import pandas as pd
url = "https://swapi.dev/api/people/"
da_starwar = {
    "name":[],
    "height":[],
    "mass":[]
}
df1 = pd.DataFrame(da_starwar)

response = get(url)
## 200 = OK
print (response.status_code)

## see data that get back from server
try:
  for i in range(10):
          index = i + 1
          new_url = url + str(index)
          resp = get(new_url).json()
          temp_df = pd.DataFrame({
                      "name": [resp["name"]],
                      "height": [resp["height"]],
                      "mass": [resp["mass"]]
                  })
          # Concatenate the temporary DataFrame with the main DataFrame
          df1 = pd.concat([df1, temp_df], ignore_index=True)
  col_name = ["name","height","mass"]
  with open ("starwar_list.csv","w") as file:
    writer = csv.DictWriter(file,fieldnames = col_name)
    writer.writeheader()
    writer.writerows(df1.to_dict(orient='records'))
    file.close()
except:
    print ("Any Error")
print(df1)