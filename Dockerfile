FROM webpronl/reveal-md:latest
COPY reveal.js /slides/
COPY *.png /slides/
COPY k8s-intro-dev.md /slides/

EXPOSE 1948

