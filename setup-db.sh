#!/bin/bash

# Script tự động setup database cho Vercel + Neon
# Chạy lệnh: bash setup-db.sh

echo "🚀 Bắt đầu setup database..."
echo ""

# Bước 1: Login Vercel
echo "📝 Bước 1: Login vào Vercel..."
npx vercel login

if [ $? -ne 0 ]; then
    echo "❌ Lỗi: Không thể login vào Vercel"
    exit 1
fi

echo "✅ Đã login thành công"
echo ""

# Bước 2: Link project
echo "🔗 Bước 2: Link project với Vercel..."
npx vercel link

if [ $? -ne 0 ]; then
    echo "❌ Lỗi: Không thể link project"
    exit 1
fi

echo "✅ Đã link project thành công"
echo ""

# Bước 3: Pull environment variables
echo "📥 Bước 3: Pull environment variables..."
npx vercel env pull .env.local

if [ $? -ne 0 ]; then
    echo "❌ Lỗi: Không thể pull environment variables"
    exit 1
fi

echo "✅ Đã pull environment variables thành công"
echo ""

# Bước 4: Run Prisma migrations
echo "🗄️  Bước 4: Tạo database tables..."
npx prisma db push

if [ $? -ne 0 ]; then
    echo "❌ Lỗi: Không thể tạo database tables"
    echo ""
    echo "💡 Gợi ý: Bạn có thể chạy SQL thủ công trong Neon Console"
    echo "   Xem file SETUP_DATABASE.md để biết chi tiết"
    exit 1
fi

echo "✅ Database đã được setup thành công!"
echo ""

# Bước 5: Generate Prisma Client
echo "🔧 Bước 5: Generate Prisma Client..."
npx prisma generate

if [ $? -ne 0 ]; then
    echo "⚠️  Warning: Không thể generate Prisma Client"
fi

echo ""
echo "🎉 HOÀN TẤT!"
echo ""
echo "Website của bạn đã sẵn sàng:"
echo "🌐 https://cong-ty-tnhh-vo-cuc-phuong-public.vercel.app"
echo ""
echo "Để xem database, chạy lệnh:"
echo "  npx prisma studio"
echo ""
