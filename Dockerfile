from node:18-bullseye                        

WORKDIR /app
RUN apt-get update && apt-get install -y zip firefox-esr && git clone git://git.sv.gnu.org/librejs.git .
RUN npm install acorn-loose jssha browserify selenium-webdriver geckodriver
RUN npm install -g geckodriver

RUN export PATH=$PATH:./node_modules/.bin

RUN ./build.sh

ENTRYPOINT ["node", "./utilities/compliance.js"]

