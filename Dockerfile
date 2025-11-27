FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN mamba create --yes --name dsci522-env --file /tmp/conda-linux-64.lock \
    && mamba clean --all -y -f \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"

ENV CONDA_DEFAULT_ENV=dsci522-env
ENV PATH=/opt/conda/envs/project-env/bin:$PATH

 
