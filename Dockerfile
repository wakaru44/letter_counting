

# Start from a core stack version
FROM jupyter/base-notebook:python-3.7.3

# Install from requirements.txt file
COPY requirements.txt /tmp/

RUN conda update -n base conda

RUN conda install --yes --file /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
