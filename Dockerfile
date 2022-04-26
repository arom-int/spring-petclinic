FROM anapsix/alpine-java 
LABEL maintainer="alexei.romanov@endava.com" 
COPY /var/jenkins_home/workspace/petclinic_freestyle_pipeline/build/libs/spring-petclinic-2.6.0-plain.jar /home/spring-petclinic-2.6.0-plain.jar 
CMD ["java","-jar","/home/spring-petclinic-2.6.0-plain.jar"]