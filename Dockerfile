FROM            ubuntu:latest
MAINTAINER      Guillaume J. Charmes <gcharmes@leaf.ag>

RUN             apt-get install -y wget && wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
RUN             apt-get update && apt-get install -y elixir git

RUN             locale-gen en_US.UTF-8
ENV             LANG       en_US.UTF-8
ENV             LANGUAGE   en_US:en
ENV             LC_ALL     en_US.UTF-8
