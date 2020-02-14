FROM resin/raspberry-pi-python:3.7.0-stretch

ENV DOCKERFILE_VERSION 0.0.1

RUN apt-get update && apt-get install git

RUN mkdir -p ~/.ssh/

RUN ssh-keyscan github.com > ~/.ssh/known_hosts

RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDaRrhPoFm1R23/9r6iPpMlpqESPesay/hv61dpzfFEqNKIaP3JfidgeC/CH1ohcqittvektQnFCGeLhtrhgmqwWVHlDUn5k6KgqHiQDRVneuFtUwnvML7Izzjy9GaiGa10QAr+Ib0hSa0t9mN2+qjkO6qNq4TWCd+592WApQnu+2Dsy/ptpOZ2mhrk3s62I/IToi7XCzDyVru9uG5qgXNIr1c4pkn/zTPItQQcgG+bhdUcpr99dgJm6VI47eqcAPMJViv9Lp7CpndTCzIFm8bi4J/nDNOk2IxLWNo3D6SXiwWdzDALLak8JJPdLt11MEQ1v1HkRWmltGfc70Q3pjbsgjfaoXu2XXrovcq8afEd+SCFv+2IXRcUePhY5h/u57mRzHJuGKYQt1IGzx+e2RCCf6/cbgG0NLID5iuulLl0hV3wH0fhliRJsIr1stQpKR0FaMj5TtaVK/kCka6DZYWTz/2zcaZThuZzO3CvPUuz+U4cNsPrOGDFT/3IRZCYDPd/PHAV2vQTalnTCxWKaMUdou6aaaetvVy8JU4nQoHUykSBcV3zld9eZZ3HhpdVYt0XXTsBG+b0y7SXu51G6KRV7ozgEY7z5FS6Vv54txnHvgN9IK0Mmdj6jbuDjyuNb3pWaH7JOWg1KiqzAfCImtlxSnVNpCKaREjJR//EMDJa/Q== gonzalobonigo@gmail.com" > ~/.ssh/id_rsa.pub

RUN mkdir /app

COPY . /app

CMD python /app/backup.py
