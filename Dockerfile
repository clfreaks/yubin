FROM 40ants/base-lisp-image:0.6.0-sbcl-bin as base

COPY . /app
RUN qlot install

EXPOSE 5000
ENTRYPOINT ["qlot", "exec"]
CMD ["quicklisp/bin/clackup", "--server", "woo", "--address", "0.0.0.0", "--port", "5000", "--debug", "nil", "./app.lisp"]
