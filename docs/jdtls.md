# Installing Jdtls

## Install Java

**Fedora - RHEL based**

```bash
sudo dnf install java-latest-openjdk
```

## Install Jdtls

```bash
mkdir .compile
cd .compile
git clone https://github.com/eclipse-jdtls/eclipse.jdt.ls.git
cd eclipse.jdt.ls
JAVA_HOME=/usr/bin/java ./mvnw clean verify -DskipTests=true
```

## Create a symlink for jdtls

```bash
sudo ln -rs $HOME/.compile/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/bin /usr/bin/jdtls
```
