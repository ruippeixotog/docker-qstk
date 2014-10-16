# ruippeixotog/qstk Docker image

This repository contains the Dockerfile for `ruippeixotog/qstk`, a Docker image with the [QSTK 0.2.8](http://wiki.quantsoftware.org/index.php?title=QuantSoftware_ToolKit) Python library installed together with a ready to use [iPython notebook](http://ipython.org/notebook.html).

## How to run

Create a container from this image with:

```
docker run -dt -p 8888:8888 ruippeixotog/qstk
```

## Ports

* **8888** - The iPython notebook web interface.

## Volumes

* **/notebooks** - The working directory of the iPython notebook, where notebook files and Python code can be placed.
