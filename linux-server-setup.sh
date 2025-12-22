if [ ! -f "artisan" ]; then
    echo "❌ Error: 'artisan' file not found. Please run this script from the Laravel project root."
    exit 1
fi
echo "🚀 Starting fix in $(pwd)..."
echo "📂 Recreating storage folder structure..."
mkdir -p storage/framework/{cache/data,sessions,views}
mkdir -p storage/logs
echo "🔐 Setting permissions to 775..."
chmod -R 775 storage bootstrap/cache
echo "👤 Attempting to set ownership to www-data..."
chown -R www-data:www-data storage bootstrap/cache 2>/dev/null || echo "⚠️  Note: Could not change owner to www-data (may require sudo or user doesn't exist)."
echo "🧹 Clearing application cache..."
php artisan cache:clear
php artisan view:clear
php artisan config:clear
echo "✅ Done! Permissions fixed and cache cleared."