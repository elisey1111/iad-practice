FROM python:3.10-slim

# Встановлюємо Jupyter Notebook
RUN pip install --no-cache-dir notebook jupyterlab

# Копіюємо проект у контейнер
WORKDIR /app
COPY . /app

# Відкриваємо порт
EXPOSE 8888

# Запускаємо Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
