# Flask app DevOps 
### befpore security the pipeline works like
## steps

## 1. code lint 
## 2. code, build and push 
## 3. Deploy  


# Build Flask app DevSecOps pipeline 

## Now add security on each step 
# Tests for each steps which we want to add in our DevOps pipeline 

### 1. Code Quality-> with falke8 linter
### 2. Secrets Scan -> gitleaks
### 3. Dependency Scan -> pip-audit for CVE(Common Velnerability And Exposures)
### 4. Docker lint -> hasolint (Dockerfile scan)
### 5. Image scan -> trivi (Check CRITICAL and HIGH CVEs)
### 6. Deplopy to server -> with SSH 