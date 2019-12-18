FROM alpine/helm:3.0.1 as builder
ADD ./ /charts
WORKDIR /charts/
RUN sh package.sh
WORKDIR /out
RUN helm repo index .

FROM nginx
COPY --from=builder /out /usr/share/nginx/html
