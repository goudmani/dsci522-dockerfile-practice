FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock conda-linux-64.lock

# 3. Create a new conda environment from the lock file
RUN conda create --yes --name 522-dockerlock --file /tmp/conda-linux-64.lock && \
    conda clean -afy
# 4. Make the new environment the default
ENV CONDA_DEFAULT_ENV=522-dockerlock
ENV PATH=/opt/conda/envs/522-dockerlock/bin:$PATH

#test
 
