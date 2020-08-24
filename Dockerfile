FROM abraxaslib/miniconda:latest
WORKDIR /jupyter
RUN pip install --upgrade pip
RUN pip3 install jupyter -U && pip3 install jupyterlab
EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--no-browser","--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
