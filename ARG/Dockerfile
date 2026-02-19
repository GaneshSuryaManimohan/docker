ARG version
FROM almalinux:${version:-9}
ARG NAME=Surya
ARG DOB=22/05/1995
ARG Day=Tuesday
ENV DAY=${Day}
RUN echo "My name is ${NAME} and I was born on ${DOB}, Day is ${Day}"
CMD ["sleep", "120"]