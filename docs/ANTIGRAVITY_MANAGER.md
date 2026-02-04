# Antigravity Manager (Local) — Notes

This document captures the **local API behavior** of Antigravity Manager for reference only.
**We do not integrate it into the script**, but we document how it works.

## Local API (observed)
- Base: `http://127.0.0.1:8045`
- Health: `GET /api/status` → `{ status: "ok", version: "x.y.z" }`
- Accounts: `GET /api/accounts`

### `/api/accounts` response (excerpt)
- `accounts[]`:
  - `email`, `name`, `is_current`
  - `quota.models[]`: per-model `percentage` + `reset_time`
  - `subscription_tier`
- `current_account_id` identifies the active account

## Why we don't use it
- It requires the Manager app to run
- It is an extra dependency and surface area
- You requested no integration with Manager (security preference)

## If you want to compare
- You can use it **only for manual checks**
- Do **not** embed tokens or credentials
- Keep it local-only

## Example curl (manual check)
```bash
curl -s http://127.0.0.1:8045/api/accounts | jq '.'
```
