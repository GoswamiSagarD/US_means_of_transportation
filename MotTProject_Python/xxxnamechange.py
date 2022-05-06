path = "C:/Users/sgoswam/Desktop/MoT Project/MoT_raw_data/"
os.chdir(path)

i = 0
j = 2010
for iFileNames in os.listdir():
    ifrom = path + iFileNames
    
    if   i % 3 == 0:
        ito = path + "ACS" + str(j) + ".csv"
    elif i % 3 == 1:
        ito = path + "ACSmeta" + str(j) + ".csv"
    elif i % 3 == 2:
        ito = path + "ACStitle" + str(j) + ".txt"
        j += 1
    
    os.rename(ifrom, ito)

    i +=1