FROM python:3
RUN mkdir WORK_REPO
RUN cd WORK_REPO
WORKDIR /WORK_REPO
ADD SampleProject.py .
CMD ["python","-u","SampleProject.py"]
