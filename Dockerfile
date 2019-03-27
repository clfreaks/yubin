FROM 40ants/base-lisp-image:0.6.0-sbcl-bin as base

COPY . /app
RUN qlot install
RUN qlot exec ros build roswell/yubin-server.ros

EXPOSE 5000
ENTRYPOINT ["qlot", "exec"]
CMD ["roswell/yubin-server"]
