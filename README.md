### Virtualmin installed over Centos 7 (AMD64)

[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/3171/badge)](https://bestpractices.coreinfrastructure.org/projects/3171) [![](https://images.microbadger.com/badges/image/giodegas/virtualmin-c7.svg)](https://microbadger.com/images/giodegas/virtualmin-c7 "Get your own image badge on microbadger.com")

#### To run in docker:
docker run --name <name> [--net=<net>] -tid -p 20-21:20-21 -p 25:25 -p 80:80 -p 110:110 -p 143:143 -p 10000:10000  -p 20000:20000 giodegas/virtualmin-c7

#### To configure Virtualmin execute:
```
Docker attach <name>
"sh install.sh -f" 
```
and then enter a fully qualified hostname (for example, host.example.com) of the virtualmin host, that has to be resolved by DNS.
