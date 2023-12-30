import cloudscraper
import json

def resolver():
    print("\n"*1)
    cfx = input("Enter the Cfx.re link : ")
    if not "cfx.re/join" in cfx:
        print("Paste in format 'https://cfx.re/join/....'\n\n")
        resolver()
    if "https://cfx.re/join/" in cfx :
        cfx_num = cfx.replace("https://cfx.re/join/","")
    elif "cfx.re/join/" in cfx :
        cfx_num = cfx.replace("cfx.re/join/","")
    scraper = cloudscraper.create_scraper()
    resolve = scraper.get("https://servers-frontend.fivem.net/api/servers/single/"+cfx_num)
    result = resolve.json()
    ip = result["Data"]["connectEndPoints"]
    hostname = result["Data"]["hostname"]
    print("\n"*3)
    try : 
        print("The Server is : "+ hostname)
        print("The IP and Port are : " + ip[0])
    except :
        print("The Server is : "+ hostname)
        print("No IP Available")
    


if __name__ == "__main__":
    resolver()