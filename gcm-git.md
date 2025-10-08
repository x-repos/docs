# **gcm short command**
```
mkdir -p ~/.bin && \
cat > ~/.bin/gcm <<'EOF'
#!/usr/bin/bash
git add .
git commit -m "Auto Commit"
git push
EOF

chmod +x ~/.bin/gcm

# Add to PATH if not already there
if ! grep -q 'export PATH="$HOME/.bin:$PATH"' ~/.bashrc; then
  echo '' >> ~/.bashrc
  echo '# Add personal git helper scripts' >> ~/.bashrc
  echo 'export PATH="$HOME/.bin:$PATH"' >> ~/.bashrc
fi

# Reload bash settings
source ~/.bashrc

echo "✅ gcm installed! You can now run 'gcm' inside any git repo."

```
