# FUTURE_CS_01
This is my Internship repository For a internship from Future interns Cyber security and task one.

# from ~/futureinterns/task1
# 1) start lab
docker compose up -d

# 2) run a quick zap baseline scan
./scripts/zap-scan.sh

# 3) run sqlmap on a guessed param (replace URL param first)
docker run --rm -it -v ${PWD}/evidence/sqlmap-results:/root/.sqlmap paoloo/sqlmap \
  --url "http://host.docker.internal:3000/rest/products?id=1" --batch --dbs

# 4) copy reports locally if needed
docker cp zap:/zap/wrk/zap-baseline-report.html ./evidence/zap-reports/ || true
