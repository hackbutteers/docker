#base os image
FROM lijippy/dev:latest 
MAINTAINER your_name <walle_group@hotmail.com>
LABEL Description="This image is the base os dev image."  Version="1.0"
# reconfig timezone
RUN mkdir /root/mytest

copy test.cc /root/mytest

WORKDIR /root/mytest

RUN g++ test.cc

CMD ["./a.out"]


