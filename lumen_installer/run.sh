
#!/usr/bin/with-contenv bashio

echo "📦 Starte Lumen Installer..."

SOURCE_DIR="/data"
TARGET_DIR="/config"

FILES=(
  "lumen_voice_assistant_setup_pi5.yaml"
  "lumen_voice_addons_multilang.yaml"
  "lumen_gpt_einkaufsliste_webhook.yaml"
  "lumen_auto_sprachausgabe.yaml"
  "lumen_mastersetup_guide.md"
)

for FILE in "${FILES[@]}"
do
  echo "➡️  Kopiere $FILE nach $TARGET_DIR..."
  cp "$SOURCE_DIR/$FILE" "$TARGET_DIR/$FILE"
done

echo "✅ Lumen Setup wurde installiert!"
