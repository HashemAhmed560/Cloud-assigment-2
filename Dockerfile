# Use an official Python runtime as a parent image
FROM jupyter/base-notebook

# Set the working directory in the container
WORKDIR /home/jovyan/work

# Copy the contents of your folder into the container
COPY . /home/jovyan/work

# Install any needed packages specified in requirements.txt
RUN pip install — no-cache-dir -r requirements.txt

# Run Jupyter Notebook when the container launches
CMD [“jupyter”, “notebook”, “ — ip=’0.0.0.0'”, “ — port=8888”, “ — no-browser”, “ — allow-root”]