FROM homeassistant/home-assistant
RUN git clone https://github.com/web-push-libs/pywebpush.git /pywebpush
RUN pip install -r /pywebpush/requirements.txt
RUN python /pywebpush/setup.py develop
RUN apk add samba-common
RUN chown nobody:nogroup /config

