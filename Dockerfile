FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y \
	git \
	vim \
	curl \
	sudo \
	gnupg \
        openjdk-11-jdk

RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add

RUN apt-get update
RUN apt-get install -y \
        sbt

RUN mkdir /root/syneart/
RUN git clone https://github.com/haifengl/smile.git /root/syneart/smile
WORKDIR /root/syneart/smile
RUN sbt package

RUN mkdir /root/syneart/smile/shell/src/universal/lib/
WORKDIR /root/syneart/smile/shell/src/universal/lib/

RUN find /root/syneart/smile/ -name *.jar -exec sh -c 'ln -s {} $(basename {})' \;
RUN ln -s `cat /root/syneart/smile/shell/target/streams/compile/dependencyClasspath/_global/streams/export | sed 's/:/\n/g' | grep jar` .

WORKDIR /root/syneart/smile
