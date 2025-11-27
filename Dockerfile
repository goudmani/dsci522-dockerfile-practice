FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock conda-linux-64.lock

# 3. Create a new conda environment from the lock file
RUN conda create --yes --name dsci522-env --file /tmp/conda-linux-64.lock && \
    conda clean -afy
# 4. Make the new environment the default
ENV CONDA_DEFAULT_ENV=dsci522-env
ENV PATH=/opt/conda/envs/dsci522-env/bin:$PATH

#test
 
