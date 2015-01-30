FROM mariadb

MAINTAINER Didiet Noor <didiet@ykode.com>

ADD stopwords.txt /etc/mysql/stopwords.txt

ADD phab.cnf /etc/mysql/conf.d/phab.cnf

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 3306

CMD ["mysqld"]
