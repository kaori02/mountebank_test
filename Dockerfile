FROM bbyars/mountebank

EXPOSE 9500 9555

ADD imposters.ejs /resources/imposters.ejs

CMD [ "--port", "9500", "--configfile", "/resources/imposters.ejs", "--allowInjection" ]
