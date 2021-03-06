FROM homeassistant/home-assistant
RUN apk --no-cache upgrade && apk --no-cache add samba ipmitool
RUN git clone https://github.com/web-push-libs/pywebpush.git /pywebpush
RUN pip install -r /pywebpush/requirements.txt
RUN python /pywebpush/setup.py develop
RUN chown nobody:nogroup /config

