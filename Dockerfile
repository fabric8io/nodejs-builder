FROM rhipaas/karma-xvfb

RUN yum install -y git hg svn make bzr
RUN npm install -g angular-cli

