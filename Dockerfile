# Base image OSRM
FROM osrm/osrm-backend:latest

# Set working directory inside the container
WORKDIR /data

# Copy the OSM data file and the extracted OSRM data files into the container
COPY vietnam-latest.osm.pbf /data/
COPY vietnam-latest.osrm.cell_metrics /data/
COPY vietnam-latest.osrm.cells /data/
COPY vietnam-latest.osrm.cnbg /data/
COPY vietnam-latest.osrm.cnbg_to_ebg /data/
COPY vietnam-latest.osrm.datasource_names /data/
COPY vietnam-latest.osrm.ebg /data/
COPY vietnam-latest.osrm.ebg_nodes /data/
COPY vietnam-latest.osrm.edges /data/
COPY vietnam-latest.osrm.enw /data/
COPY vietnam-latest.osrm.fileIndex /data/
COPY vietnam-latest.osrm.geometry /data/
COPY vietnam-latest.osrm.icd /data/
COPY vietnam-latest.osrm.maneuver_overrides /data/
COPY vietnam-latest.osrm.mldgr /data/
COPY vietnam-latest.osrm.names /data/
COPY vietnam-latest.osrm.nbg_nodes /data/
COPY vietnam-latest.osrm.partition /data/
COPY vietnam-latest.osrm.properties /data/
COPY vietnam-latest.osrm.ramIndex /data/
COPY vietnam-latest.osrm.restrictions /data/
COPY vietnam-latest.osrm.timestamp /data/
COPY vietnam-latest.osrm.tld /data/
COPY vietnam-latest.osrm.tls /data/
COPY vietnam-latest.osrm.turn_duration_penalties /data/
COPY vietnam-latest.osrm.turn_penalties_index /data/
COPY vietnam-latest.osrm.turn_weight_penalties /data/

# Start OSRM routing server with Multi-Level Dijkstra algorithm
CMD ["osrm-routed", "--algorithm", "mld", "/data/vietnam-latest.osrm"]