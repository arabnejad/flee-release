FROM ubuntu
FROM python:3

# 
RUN pip install numpy
RUN pip install pandas 
RUN pip install matplotlib

RUN git clone https://github.com/djgroen/flee-release.git flee


WORKDIR $PWD/flee

# do init test
RUN python3 test_csv.py > test-output/out.csv
RUN mkdir out
RUN python3 plot-flee-output.py test-output


ENTRYPOINT  bash
