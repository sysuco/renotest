FROM maven:3.9.4-amazoncorretto-17-debian AS build
RUN touch /123 && which mvn

FROM amazoncorretto:21.0.2-al2023-headless
COPY --from=build /123 /456
