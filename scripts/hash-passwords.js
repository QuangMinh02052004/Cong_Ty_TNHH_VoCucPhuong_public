// Script để hash passwords cho users
// Chạy: node scripts/hash-passwords.js

const bcrypt = require('bcryptjs');

async function hashPasswords() {
    console.log('🔐 Hashing passwords...\n');

    const passwords = {
        'admin123456': 'Admin password',
        'staff123456': 'Staff password',
        'user123456': 'User password'
    };

    for (const [password, label] of Object.entries(passwords)) {
        const hash = await bcrypt.hash(password, 10);
        console.log(`${label}:`);
        console.log(`  Plain: ${password}`);
        console.log(`  Hash:  ${hash}`);
        console.log('');
    }

    console.log('✅ Done! Copy the hashes above to seed-data.sql');
}

hashPasswords().catch(console.error);
