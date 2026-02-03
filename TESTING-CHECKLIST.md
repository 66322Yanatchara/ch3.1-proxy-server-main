# Testing Checklist

## Pre-Deployment
- [ ] `docker-compose config` returns valid YAML.
- [ ] Frontend builds successfully (`npm run build`).
- [ ] Backend tests pass (if any).

## Functional Testing
- [ ] **Frontend**: Open `http://localhost`. The app should load without errors in the console.
- [ ] **API**: `curl http://localhost/api/health` should return "healthy".
- [ ] **Data**: Verify data is loaded from the backend (check Network tab for `/api` requests).

## Security
- [ ] Check headers: `curl -I http://localhost` should show `X-Frame-Options`, `X-XSS-Protection`, etc.
- [ ] Check /api path is not accessible directly on port 3000 (containers should be internal).

## Performance
- [ ] Check gzip: `curl -I -H "Accept-Encoding: gzip" http://localhost` should show `Content-Encoding: gzip`.
- [ ] Check static cache: Images/CSS should have `Cache-Control` headers.
