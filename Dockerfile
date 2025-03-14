FROM wiremock/wiremock:2.35.0

# Copy mappings and files
COPY mappings /home/wiremock/mappings
COPY __files /home/wiremock/__files

# Expose the default WireMock port
EXPOSE 8080

# Set WireMock command line options
# --global-response-templating: Enable response templating globally
# --verbose: Enable verbose logging
# --local-response-templating: Enable response templating for specific stubs
CMD ["--global-response-templating", "--verbose", "--local-response-templating"]
