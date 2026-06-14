from instagrapi import Client
import json

# Initialise client
cl = Client()

# Set proxy - Optional 
# cl.set_proxy("http://ip:port")

# Login using credentials
username = "name@example.com"
password = "Example123"

print("🔐 Logging in...")
try:
    cl.login(username, password)
    print("✅ Login successful!")
except Exception as e:
    print(f"❌ Login failed: {e}")
    exit(1)

# Dump session to session.json for persistence
session_data = cl.get_settings()
with open('session.json', 'w') as f:
    json.dump(session_data, f, indent=2)

print("💾 Session dumped to session.json")
