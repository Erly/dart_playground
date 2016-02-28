FROM google/dart

WORKDIR /app

ADD pubspec.* /app/

RUN pub get

ADD . /app

RUN pub get — offline

CMD []

EXPOSE 3030

ENTRYPOINT ["/usr/bin/dart", "bin/server.dart"]