FROM rhipaas/karma-xvfb

RUN yum install -y git hg svn make bzr bzip2
RUN npm install -g @angular/cli

RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  tar jxf phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/ && \
  rm phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  rm -rf phantomjs-2.1.1-linux-x86_64

CMD bash