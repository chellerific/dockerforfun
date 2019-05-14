FROM nginx:alpine

# clean out old configurations
RUN rm /etc/nginx/conf.d/*

# copy new configuration 
COPY proxy.conf /etc/nginx/conf.d/
#COPY proxy.debug.conf /etc/nginx/conf.d/proxy.conf

COPY www/ /etc/nginx/html