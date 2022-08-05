# Build the c64 binary
FROM public.ecr.aws/lambda/python:3.9 as buildtools

LABEL maintainer="dennisvink@binx.io"
LABEL version="0.0.1"
LABEL description="This is custom Docker Image for the Commodore 64 runtime"

RUN yum -y groups mark install "Development Tools"
RUN yum -y groups mark convert "Development Tools"
RUN yum -y groupinstall "Development Tools"
RUN yum -y install git

RUN git clone https://github.com/mist64/cbmbasic.git && cd cbmbasic && make && cp cbmbasic /

# Throw away everything we've installed except for the C64 binary
FROM public.ecr.aws/lambda/python:3.9 as c64
COPY --from=buildtools /cbmbasic ${LAMBDA_TASK_ROOT} 

# Test whether the C64 binary works with our sample BASIC file
RUN echo "10 PRINT \"ALL MY SYSTEMS ARE OPERATIONAL AND ALL MY CIRCUITS ARE FUNCTIONING PERFECTLY\"" > test.bas
RUN chmod 755 ${LAMBDA_TASK_ROOT}/cbmbasic && ${LAMBDA_TASK_ROOT}/cbmbasic test.bas

# Copy over the Python Lambda function
COPY src/app.py ${LAMBDA_TASK_ROOT}
COPY html/ ${LAMBDA_TASK_ROOT}
CMD [ "app.handler" ]
