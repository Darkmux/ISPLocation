#!/bin/bash
#
# ISPLocation: (27/10/2020)
#
# VARIABLES
#
PWD=$(pwd)
verde='\033[32m'
rojo='\033[31m'
blanco='\033[37m'
#
# FUNCIONES
#
function ISPLocation {
	sleep 0.5
	clear
echo -e "${verde}
 ▄▄▄  ▗▄▖ ▗▄▄▖ ▗▖                         █
 ▀█▀ ▗▛▀▜ ▐▛▀▜▖▐▌                   ▐▌    ▀
  █  ▐▙   ▐▌ ▐▌▐▌    ▟█▙  ▟██▖ ▟██▖▐███  ██   ▟█▙ ▐▙██▖
  █   ▜█▙ ▐██▛ ▐▌   ▐▛ ▜▌▐▛  ▘ ▘▄▟▌ ▐▌    █  ▐▛ ▜▌▐▛ ▐▌
  █     ▜▌▐▌   ▐▌   ▐▌ ▐▌▐▌   ▗█▀▜▌ ▐▌    █  ▐▌ ▐▌▐▌ ▐▌
 ▄█▄ ▐▄▄▟▘▐▌   ▐▙▄▄▖▝█▄█▘▝█▄▄▌▐▙▄█▌ ▐▙▄ ▗▄█▄▖▝█▄█▘▐▌ ▐▌
 ▀▀▀  ▀▀▘ ▝▘   ▝▀▀▀▘ ▝▀▘  ▝▀▀  ▀▀▝▘  ▀▀ ▝▀▀▀▘ ▝▀▘ ▝▘ ▝▘
"${blanco}
}
function Install {
if [ -x /data/data/com.termux/files/usr/bin/w3m ]
then
sleep 0.1
else
ISPLocation
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Instalando w3m... ${verde}█
└═══════════════════┘
"${blanco}
apt-get install w3m -y
fi
if [ -x /data/data/com.termux/files/usr/bin/wget ]; then
sleep 0.1
else
ISPLocation
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Instalando wget... ${verde}█
└════════════════════┘
"${blanco}
apt-get install wget -y
fi
}
function MYLocation {
	sleep 0.5
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}OBTENIENDO INFORMACIÓN... ${verde}█
└═══════════════════════════┘
"${blanco}
# [IP]==[INTERNET PROTOCOL]==[PROTOCOLO DE INTERNET]
IP=$(w3m -dump https://ipapi.co/ip)
# [LATITUDE]==[LATITUD]
LATITUDE=$(w3m -dump https://ipapi.co/latitude)
# [LONGITUDE]==[LONGITUD]
LONGITUDE=$(w3m -dump https://ipapi.co/longitude)
# [ASN]==[AUTONOMOUS SYSTEM NUMBERS]==[NÚMEROS DE SISTEMA AUTÓNOMO]
ASN=$(w3m -dump https://ipapi.co/asn)
# [CITY]==[CIUDAD]
CITY=$(w3m -dump https://ipapi.co/city)
# [CONTINENT_CODE]==[CÓDIGO DE CONTINENTE]
CONTINENT_CODE=$(w3m -dump https://ipapi.co/continent_code)
# [CCC]==[COUNTRY CALLING CODE]==[CÓDIGO DE LLAMADAS DE PAÍS]
CCC=$(w3m -dump https://ipapi.co/country_calling_code)
# [COUNTRY_NAME]==[NOMBRE DEL PAÍS]
COUNTRY_NAME=$(w3m -dump https://ipapi.co/country_name)
# [CURRENCY]==[MONEDA]
CURRENCY=$(w3m -dump https://ipapi.co/currency)
# [LANGUAGES]==[IDIOMAS]
LANGUAGES=$(w3m -dump https://ipapi.co/languages)
# [ISP]==[INTERNET SERVICE PROVIDER]==[PROVEEDOR DE SERVICIOS DE INTERNET]
ISP=$(w3m -dump https://ipapi.co/org)
# [REGION]==[REGIÓN]
REGION=$(w3m -dump https://ipapi.co/region)
# [REGION_CODE]==[CÓDIGO DE REGIÓN]
REGION_CODE=$(w3m -dump https://ipapi.co/region_code)
# [TIMEZONE]==[ZONA HORARIA]
TIMEZONE=$(w3m -dump https://ipapi.co/timezone)
# [UTC]==[COORDINATED UNIVERSAL TIME]==[TIEMPO UNIVERSAL COORDINADO]
UTC=$(w3m -dump https://ipapi.co/utc_offset)
# [VERSION]==[VERSIÓN]
VERSION=$(w3m -dump https://ipapi.co/version)
# [COUNTRY]==[PAÍS]
COUNTRY=$(w3m -dump https://ipapi.co/country)
# [COUNTRY_AREA]==[ÁREA DEL PAÍS]
COUNTRY_AREA=$(w3m -dump https://ipapi.co/country_area)
# [COUNTRY_CAPITAL]==[CAPITAL DEL PAÍS]
COUNTRY_CAPITAL=$(w3m -dump https://ipapi.co/country_capital)
# [COUNTRY_CODE_ISO3]==[CÓDIGO DEL PAÍS ISO3]
COUNTRY_CODE_ISO3=$(w3m -dump https://ipapi.co/country_code_iso3)
# [COUNTRY_POPULATION]==[POBLACIÓN NACIONAL]
COUNTRY_POPULATION=$(w3m -dump https://ipapi.co/country_population)
# [COUNTRY_TLD]==[TLD DEL PAÍS]
COUNTRY_TLD=$(w3m -dump https://ipapi.co/country_tld)
# [CURRENCY_NAME]==[NOMBRE DE MONEDA]
CURRENCY_NAME=$(w3m -dump https://ipapi.co/currency_name)
ISPLocation
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}IP ${verde}=> ${blanco}INTERNET PROTOCOL ${verde}█
└═════════════════════════┘
┃    ┌═══════════════════════┐
└═>>>█ ${blanco}PROTOCOLO DE INTERNET ${verde}█
┃    └═══════════════════════┘
┃
└═>>>${blanco} ${IP}"
sleep 0.5
echo -e "${verde}
┌══════════┐
█ ${blanco}LATITUDE ${verde}█
└══════════┘
┃    ┌═════════┐
└═>>>█ ${blanco}LATITUD ${verde}█
┃    └═════════┘
┃
└═>>>${blanco} ${LATITUDE}"
sleep 0.5
echo -e "${verde}
┌═══════════┐
█ ${blanco}LONGITUDE ${verde}█
└═══════════┘
┃    ┌══════════┐
└═>>>█ ${blanco}LONGITUD ${verde}█
┃    └══════════┘
┃
└═>>>${blanco} ${LONGITUDE}"
sleep 0.5
echo -e "${verde}
┌══════════════════════════════════┐
█ ${blanco}ASN ${verde}=> ${blanco}AUTONOMOUS SYSTEM NUMBERS ${verde}█
└══════════════════════════════════┘
┃    ┌═════════════════════════════┐
└═>>>█ ${blanco}NÚMEROS DE SISTEMA AUTÓNOMO ${verde}█
┃    └═════════════════════════════┘
┃
└═>>>${blanco} ${ASN}"
sleep 0.5
echo -e "${verde}
┌══════┐
█ ${blanco}CITY ${verde}█
└══════┘
┃    ┌════════┐
└═>>>█ ${blanco}CIUDAD ${verde}█
┃    └════════┘
┃
└═>>>${blanco} ${CITY}"
sleep 0.5
echo -e "${verde}
┌════════════════┐
█ ${blanco}CONTINENT_CODE ${verde}█
└════════════════┘
┃    ┌══════════════════════┐
└═>>>█ ${blanco}CÓDIGO DE CONTINENTE ${verde}█
┃    └══════════════════════┘
┃
└═>>>${blanco} ${CONTINENT_CODE}"
sleep 0.5
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}CCC ${verde}=> ${blanco}COUNTRY CALLING CODE ${verde}█
└═════════════════════════════┘
┃    ┌════════════════════════════┐
└═>>>█ ${blanco}CÓDIGO DE LLAMADAS DE PAÍS ${verde}█
┃    └════════════════════════════┘
┃
└═>>>${blanco} ${CCC}"
sleep 0.5
echo -e "${verde}
┌══════════════┐
█ ${blanco}COUNTRY_NAME ${verde}█
└══════════════┘
┃    ┌═════════════════┐
└═>>>█ ${blanco}NOMBRE DEL PAÍS ${verde}█
┃    └═════════════════┘
┃
└═>>>${blanco} ${COUNTRY_NAME}"
sleep 0.5
echo -e "${verde}
┌══════════┐
█ ${blanco}CURRENCY ${verde}█
└══════════┘
┃    ┌════════┐
└═>>>█ ${blanco}MONEDA ${verde}█
┃    └════════┘
┃
└═>>>${blanco} ${CURRENCY}"
sleep 0.5
echo -e "${verde}
┌═══════════┐
█ ${blanco}LANGUAGES ${verde}█
└═══════════┘
┃    ┌═════════┐
└═>>>█ ${blanco}IDIOMAS ${verde}█
┃    └═════════┘
┃
└═>>>${blanco} ${LANGUAGES}"
sleep 0.5
echo -e "${verde}
┌══════════════════════════════════┐
█ ${blanco}ISP ${verde}=> ${blanco}INTERNET SERVICE PROVIDER ${verde}█
└══════════════════════════════════┘
┃    ┌════════════════════════════════════┐
└═>>>█ ${blanco}PROVEEDOR DE SERVICIOS DE INTERNET ${verde}█
┃    └════════════════════════════════════┘
┃
└═>>>${blanco} ${ISP}"
sleep 0.5
echo -e "${verde}
┌════════┐
█ ${blanco}REGION ${verde}█
└════════┘
┃    ┌════════┐
└═>>>█ ${blanco}REGIÓN ${verde}█
┃    └════════┘
┃
└═>>>${blanco} ${REGION}"
sleep 0.5
echo -e "${verde}
┌═════════════┐
█ ${blanco}REGION_CODE ${verde}█
└═════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}CÓDIGO DE REGIÓN ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco} ${REGION_CODE}"
sleep 0.5
echo -e "${verde}
┌══════════┐
█ ${blanco}TIMEZONE ${verde}█
└══════════┘
┃    ┌══════════════┐
└═>>>█ ${blanco}ZONA HORARIA ${verde}█
┃    └══════════════┘
┃
└═>>>${blanco} ${TIMEZONE}"
sleep 0.5
echo -e "${verde}
┌═══════════════════════════════════┐
█ ${blanco}UTC ${verde}=> ${blanco}COORDINATED UNIVERSAL TIME ${verde}█
└═══════════════════════════════════┘
┃    ┌═════════════════════════════┐
└═>>>█ ${blanco}TIEMPO UNIVERSAL COORDINADO ${verde}█
┃    └═════════════════════════════┘
┃
└═>>>${blanco} ${UTC}"
sleep 0.5
echo -e "${verde}
┌═════════┐
█ ${blanco}VERSION ${verde}█
└═════════┘
┃    ┌═════════┐
└═>>>█ ${blanco}VERSIÓN ${verde}█
┃    └═════════┘
┃
└═>>>${blanco} ${VERSION}"
sleep 0.5
echo -e "${verde}
┌═════════┐
█ ${blanco}COUNTRY ${verde}█
└═════════┘
┃    ┌══════┐
└═>>>█ ${blanco}PAÍS ${verde}█
┃    └══════┘
┃
└═>>>${blanco} ${COUNTRY}"
sleep 0.5
echo -e "${verde}
┌══════════════┐
█ ${blanco}COUNTRY_AREA ${verde}█
└══════════════┘
┃    ┌═══════════════┐
└═>>>█ ${blanco}ÁREA DEL PAÍS ${verde}█
┃    └═══════════════┘
┃
└═>>>${blanco} ${COUNTRY_AREA}"
sleep 0.5
echo -e "${verde}
┌═════════════════┐
█ ${blanco}COUNTRY_CAPITAL ${verde}█
└═════════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}CAPITAL DEL PAÍS ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco} ${COUNTRY_CAPITAL}"
sleep 0.5
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}COUNTRY_CODE_ISO3 ${verde}█
└═══════════════════┘
┃    ┌══════════════════════┐
└═>>>█ ${blanco}CÓDIGO DEL PAÍS ISO3 ${verde}█
┃    └══════════════════════┘
┃
└═>>>${blanco} ${COUNTRY_CODE_ISO3}"
sleep 0.5
echo -e "${verde}
┌════════════════════┐
█ ${blanco}COUNTRY_POPULATION ${verde}█
└════════════════════┘
┃    ┌════════════════════┐
└═>>>█ ${blanco}POBLACIÓN NACIONAL ${verde}█
┃    └════════════════════┘
┃
└═>>>${blanco} ${COUNTRY_POPULATION}"
sleep 0.5
echo -e "${verde}
┌═════════════┐
█ ${blanco}COUNTRY_TLD ${verde}█
└═════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}DOMINIO DEL PAÍS ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco} ${COUNTRY_TLD}"
sleep 0.5
echo -e "${verde}
┌═══════════════┐
█ ${blanco}CURRENCY_NAME ${verde}█
└═══════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}NOMBRE DE MONEDA ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco} ${CURRENCY_NAME}"
sleep 0.5
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}GML ${verde}=> ${blanco}GOOGLE MAPS LOCATION ${verde}█
└═════════════════════════════┘
┃    ┌══════════════════════════┐
└═>>>█ ${blanco}UBICACIÓN DE GOOGLE MAPS ${verde}█
┃    └══════════════════════════┘
┃
└═>>>${blanco} https://maps.google.com/?q=${LATITUDE},${LONGITUDE}
"
}
function IPDomain {
	sleep 0.5
echo -e -n "${verde}
┌══════════════┐
█ ${blanco}DIRECCIÓN IP ${verde}█
└══════════════┘
┃
└═>>> "${blanco}
read -r IPDomain
sleep 0.5
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}OBTENIENDO INFORMACIÓN... ${verde}█
└═══════════════════════════┘
"${blanco}
wget https://ipapi.co/${IPDomain}/yaml/ -o process
ISPLocation
IP=$(cat index.html | grep "ip:" | cut -d ":" -f2)
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}IP ${verde}=> ${blanco}INTERNET PROTOCOL ${verde}█
└═════════════════════════┘
┃    ┌═══════════════════════┐
└═>>>█ ${blanco}PROTOCOLO DE INTERNET ${verde}█
┃    └═══════════════════════┘
┃
└═>>>${blanco}${IP}"
sleep 0.5
LATITUDE=$(cat index.html | grep "latitude:" | cut -d "'" -f2)
echo -e "${verde}
┌══════════┐
█ ${blanco}LATITUDE ${verde}█
└══════════┘
┃    ┌═════════┐
└═>>>█ ${blanco}LATITUD ${verde}█
┃    └═════════┘
┃
└═>>>${blanco} ${LATITUDE}"
sleep 0.5
LONGITUDE=$(cat index.html | grep "longitude:" | cut -d "'" -f2)
echo -e "${verde}
┌═══════════┐
█ ${blanco}LONGITUDE ${verde}█
└═══════════┘
┃    ┌══════════┐
└═>>>█ ${blanco}LONGITUD ${verde}█
┃    └══════════┘
┃
└═>>>${blanco} ${LONGITUDE}"
sleep 0.5
ASN=$(cat index.html | grep "asn:" | cut -d ":" -f2)
echo -e "${verde}
┌══════════════════════════════════┐
█ ${blanco}ASN ${verde}=> ${blanco}AUTONOMOUS SYSTEM NUMBERS ${verde}█
└══════════════════════════════════┘
┃    ┌═════════════════════════════┐
└═>>>█ ${blanco}NÚMEROS DE SISTEMA AUTÓNOMO ${verde}█
┃    └═════════════════════════════┘
┃
└═>>>${blanco}${ASN}"
sleep 0.5
CITY=$(cat index.html | grep "city:" | cut -d ":" -f2)
echo -e "${verde}
┌══════┐
█ ${blanco}CITY ${verde}█
└══════┘
┃    ┌════════┐
└═>>>█ ${blanco}CIUDAD ${verde}█
┃    └════════┘
┃
└═>>>${blanco}${CITY}"
sleep 0.5
CONTINENT_CODE=$(cat index.html | grep "continent_code:" | cut -d ":" -f2)
echo -e "${verde}
┌════════════════┐
█ ${blanco}CONTINENT_CODE ${verde}█
└════════════════┘
┃    ┌══════════════════════┐
└═>>>█ ${blanco}CÓDIGO DE CONTINENTE ${verde}█
┃    └══════════════════════┘
┃
└═>>>${blanco}${CONTINENT_CODE}"
sleep 0.5
CCC=$(cat index.html | grep "country_calling_code:" | cut -d "'" -f2)
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}CCC ${verde}=> ${blanco}COUNTRY CALLING CODE ${verde}█
└═════════════════════════════┘
┃    ┌════════════════════════════┐
└═>>>█ ${blanco}CÓDIGO DE LLAMADAS DE PAÍS ${verde}█
┃    └════════════════════════════┘
┃
└═>>>${blanco} ${CCC}"
sleep 0.5
COUNTRY_NAME=$(cat index.html | grep "country_name:" | cut -d ":" -f2)
echo -e "${verde}
┌══════════════┐
█ ${blanco}COUNTRY_NAME ${verde}█
└══════════════┘
┃    ┌═════════════════┐
└═>>>█ ${blanco}NOMBRE DEL PAÍS ${verde}█
┃    └═════════════════┘
┃
└═>>>${blanco}${COUNTRY_NAME}"
sleep 0.5
CURRENCY=$(cat index.html | grep "currency:" | cut -d ":" -f2)
echo -e "${verde}
┌══════════┐
█ ${blanco}CURRENCY ${verde}█
└══════════┘
┃    ┌════════┐
└═>>>█ ${blanco}MONEDA ${verde}█
┃    └════════┘
┃
└═>>>${blanco}${CURRENCY}"
sleep 0.5
LANGUAGES=$(cat index.html | grep "languages:" | cut -d ":" -f2)
echo -e "${verde}
┌═══════════┐
█ ${blanco}LANGUAGES ${verde}█
└═══════════┘
┃    ┌═════════┐
└═>>>█ ${blanco}IDIOMAS ${verde}█
┃    └═════════┘
┃
└═>>>${blanco}${LANGUAGES}"
sleep 0.5
ISP=$(cat index.html | grep "org:" | cut -d ":" -f2)
echo -e "${verde}
┌══════════════════════════════════┐
█ ${blanco}ISP ${verde}=> ${blanco}INTERNET SERVICE PROVIDER ${verde}█
└══════════════════════════════════┘
┃    ┌════════════════════════════════════┐
└═>>>█ ${blanco}PROVEEDOR DE SERVICIOS DE INTERNET ${verde}█
┃    └════════════════════════════════════┘
┃
└═>>>${blanco}${ISP}"
sleep 0.5
REGION=$(cat index.html | grep "region:" | cut -d ":" -f2)
echo -e "${verde}
┌════════┐
█ ${blanco}REGION ${verde}█
└════════┘
┃    ┌════════┐
└═>>>█ ${blanco}REGIÓN ${verde}█
┃    └════════┘
┃
└═>>>${blanco}${REGION}"
sleep 0.5
REGION_CODE=$(cat index.html | grep "region_code:" | cut -d ":" -f2)
echo -e "${verde}
┌═════════════┐
█ ${blanco}REGION_CODE ${verde}█
└═════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}CÓDIGO DE REGIÓN ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco}${REGION_CODE}"
sleep 0.5
TIMEZONE=$(cat index.html | grep "timezone:" | cut -d ":" -f2)
echo -e "${verde}
┌══════════┐
█ ${blanco}TIMEZONE ${verde}█
└══════════┘
┃    ┌══════════════┐
└═>>>█ ${blanco}ZONA HORARIA ${verde}█
┃    └══════════════┘
┃
└═>>>${blanco}${TIMEZONE}"
sleep 0.5
UTC=$(cat index.html | grep "utc_offset:" | cut -d "'" -f2)
echo -e "${verde}
┌═══════════════════════════════════┐
█ ${blanco}UTC ${verde}=> ${blanco}COORDINATED UNIVERSAL TIME ${verde}█
└═══════════════════════════════════┘
┃    ┌═════════════════════════════┐
└═>>>█ ${blanco}TIEMPO UNIVERSAL COORDINADO ${verde}█
┃    └═════════════════════════════┘
┃
└═>>>${blanco} ${UTC}"
sleep 0.5
VERSION=$(cat index.html | grep "version:" | cut -d ":" -f2)
echo -e "${verde}
┌═════════┐
█ ${blanco}VERSION ${verde}█
└═════════┘
┃    ┌═════════┐
└═>>>█ ${blanco}VERSIÓN ${verde}█
┃    └═════════┘
┃
└═>>>${blanco}${VERSION}"
sleep 0.5
COUNTRY=$(cat index.html | grep "country:" | cut -d ":" -f2)
echo -e "${verde}
┌═════════┐
█ ${blanco}COUNTRY ${verde}█
└═════════┘
┃    ┌══════┐
└═>>>█ ${blanco}PAÍS ${verde}█
┃    └══════┘
┃
└═>>>${blanco}${COUNTRY}"
sleep 0.5
COUNTRY_AREA=$(cat index.html | grep "country_area:" | cut -d ":" -f2)
echo -e "${verde}
┌══════════════┐
█ ${blanco}COUNTRY_AREA ${verde}█
└══════════════┘
┃    ┌═══════════════┐
└═>>>█ ${blanco}ÁREA DEL PAÍS ${verde}█
┃    └═══════════════┘
┃
└═>>>${blanco}${COUNTRY_AREA}"
sleep 0.5
COUNTRY_CAPITAL=$(cat index.html | grep "country_capital:" | cut -d ":" -f2)
echo -e "${verde}
┌═════════════════┐
█ ${blanco}COUNTRY_CAPITAL ${verde}█
└═════════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}CAPITAL DEL PAÍS ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco}${COUNTRY_CAPITAL}"
sleep 0.5
COUNTRY_CODE_ISO3=$(cat index.html | grep "country_code_iso3:" | cut -d ":" -f2)
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}COUNTRY_CODE_ISO3 ${verde}█
└═══════════════════┘
┃    ┌══════════════════════┐
└═>>>█ ${blanco}CÓDIGO DEL PAÍS ISO3 ${verde}█
┃    └══════════════════════┘
┃
└═>>>${blanco}${COUNTRY_CODE_ISO3}"
sleep 0.5
COUNTRY_POPULATION=$(cat index.html | grep "country_population:" | cut -d ":" -f2)
echo -e "${verde}
┌════════════════════┐
█ ${blanco}COUNTRY_POPULATION ${verde}█
└════════════════════┘
┃    ┌════════════════════┐
└═>>>█ ${blanco}POBLACIÓN NACIONAL ${verde}█
┃    └════════════════════┘
┃
└═>>>${blanco}${COUNTRY_POPULATION}"
sleep 0.5
COUNTRY_TLD=$(cat index.html | grep "country_tld:" | cut -d ":" -f2)
echo -e "${verde}
┌═════════════┐
█ ${blanco}COUNTRY_TLD ${verde}█
└═════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}DOMINIO DEL PAÍS ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco}${COUNTRY_TLD}"
sleep 0.5
CURRENCY_NAME=$(cat index.html | grep "currency_name:" | cut -d ":" -f2)
echo -e "${verde}
┌═══════════════┐
█ ${blanco}CURRENCY_NAME ${verde}█
└═══════════════┘
┃    ┌══════════════════┐
└═>>>█ ${blanco}NOMBRE DE MONEDA ${verde}█
┃    └══════════════════┘
┃
└═>>>${blanco}${CURRENCY_NAME}"
sleep 0.5
GML=$(echo -e "https://maps.google.com/?q=${LATITUDE},${LONGITUDE}")
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}GML ${verde}=> ${blanco}GOOGLE MAPS LOCATION ${verde}█
└═════════════════════════════┘
┃    ┌══════════════════════════┐
└═>>>█ ${blanco}UBICACIÓN DE GOOGLE MAPS ${verde}█
┃    └══════════════════════════┘
┃
└═>>>${blanco} ${GML}"
sleep 0.5
rm process
echo -e -n "${verde}
┌════════════════════════════════════┐
█ ${blanco}NOMBRE PARA GUARDAR LA INFORMACIÓN ${verde}█
└════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r NAME
sleep 0.5
if [[ ${NAME} == "" ]]; then
mv index.html ${IP}
echo -e "${verde}
┌════════════════════════════════════┐
█ ${blanco}INFORMACIÓN GUARDADA CON EL NOMBRE ${verde}█
└════════════════════════════════════┘
┃
└═>>>${blanco}${IP}
"
else
mv index.html ${NAME}.txt
echo -e "${verde}
┌════════════════════════════════════┐
█ ${blanco}INFORMACIÓN GUARDADA CON EL NOMBRE ${verde}█
└════════════════════════════════════┘
┃
└═>>>${blanco} ${NAME}.txt
"
fi
}
function SELECT {
	ISPLocation
echo -e -n "${verde}
┌═════════════════════════════┐
█ ${blanco}INGRESE EL NÚMERO DE OPCIÓN ${verde}█
└═════════════════════════════┘
┃    ┌═══════════════════════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}UBICAR MI DIRECCIÓN IP ${verde}█
┃    └═══════════════════════════════┘
┃    ┌════════════════════════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}UBICAR UNA DIRECCIÓN IP ${verde}█
┃    └════════════════════════════════┘
┃
└═>>> "${blanco}
read -r select

if [[ $select == 1 || $select == 01 ]]; then
MYLocation
elif [[ $select == 2 || $select == 02 ]]; then
IPDomain
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"${blanco}
sleep 0.5
SELECT
fi
}
#
# Ejecución de Funciones
#
Install
SELECT
#
# Creado por: Darkmux de Informatic in Termux
