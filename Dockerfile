FROM ubuntu:18.04

# Image containing:
# base Ubuntu:18.04
# 1.  utility apps
# 2.  Java (1.8)
# 3.  Maven (3.5.4)
# 4.  Node.js (12.22.1) 
# 5.  NPM (6.14.12)
# 6.  Yarn (1.22.5)
# 7.  Bower (1.8.2)
# 8.  Gradle (7.1.1)
# 9.  python 2.7 + 3.6 + pip + pip3 + pipenv
# 10. [optional] python 3.7
# 11. [optional] python 3.8
# 12. Poetry (python)
# 13. Ruby, rbenv and ruby-build
# 14. Go (1.12.6)
# 15. Scala 2.12.6, Sbt 1.1.6
# 16. PHP (7.2)
# 17. Composer
# 18. PHP Plugins
# 19. Mix, Hex, Erlang and Elixir
# 20. Cocoapods (1.5.3)
# 21. R + Packrat
# 22. Haskel + Cabal
# 23. Paket
# 24. dotnet-sdk-5.0, dotnet cli and NuGet
# 25. Cargo

ENV DEBIAN_FRONTEND noninteractive
ENV LANGUAGE	en_US.UTF-8
ENV LANG    	en_US.UTF-8
ENV LC_ALL  	en_US.UTF-8

### Install wget, curl, git, unzip, gnupg, locales, rpm
### enverus also installs jq
RUN apt-get update && \
	apt-get -y install jq wget curl git unzip gnupg locales rpm && \
	locale-gen en_US.UTF-8 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /tmp/*
