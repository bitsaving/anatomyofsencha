TOUCH_SRC = src/touch/2-2/
TOUCH_PUBLIC = public/touch/2-2/
EXTJS_SRC = src/ext-js/4-2/
EXTJS_PUBLIC = public/ext-js/4-2/
USER_ID =
PASSWORD =

touch:
		@@mkdir -p public/touch; mkdir -p public/touch/2-2;
		@@jsduck -o ${TOUCH_PUBLIC} --welcome=${TOUCH_SRC}welcome.html --config=config.json --guides=${TOUCH_SRC}guides.json
		@@echo JSDuck Build. source ${TOUCH_SRC} to public ${TOUCH_PUBLIC}

ext-js:
		@@mkdir -p public/ext-js; mkdir -p public/ext-js/4-2;
		@@jsduck -o ${EXTJS_PUBLIC} --welcome=${EXTJS_SRC}welcome.html --config=config.json
		@@echo JSDuck Build. source ${EXTJS_SRC} to public ${EXTJS_PUBLIC}

all: touch ext-js

deploy:
		@@cd public; zip app.zip -r *; mv app.zip ../; cd -;
		@@sencha io create-version AnatomyOfSencha app.zip 0.3 'Updated' ${USER_ID} ${PASSWORD}
		@@sencha io deploy AnatomyOfSencha 0.3 ${USER_ID} ${PASSWORD}
		@@rm app.zip
