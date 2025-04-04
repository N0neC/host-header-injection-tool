#!/bin/bash

echo ""
echo "=============================================="
echo "       Host Header Injection Scanner Tool      "
echo "             Made by: @None_C                  "
echo "=============================================="
echo ""

# Help
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Usage:"
    echo "  $0 -u <url>               # Test a single URL"
    echo "  $0 -l <url_list.txt>      # Test multiple URLs"
    exit 1
fi

# Set target URLs
if [[ "$1" == "-u" && -n "$2" ]]; then
    urls=("$2")
elif [[ "$1" == "-l" && -f "$2" ]]; then
    mapfile -t urls < "$2"
else
    echo "❌ Invalid input. Use -u <url> or -l <list.txt>"
    exit 1
fi

# 25 Powerful Headers to test
headers=(
    "Host"
    "X-Host"
    "X-Forwarded-Host"
    "X-Forwarded-Server"
    "X-HTTP-Host-Override"
    "X-Original-Host"
    "X-Remote-Host"
    "X-Forwarded-For"
    "X-Originating-IP"
    "X-Remote-IP"
    "X-Client-IP"
    "Forwarded"
    "Forwarded-For"
    "X-Real-IP"
    "X-Forwarded"
    "X-Original-URL"
    "X-Rewrite-URL"
    "Referer"
    "X-Referrer"
    "X-Forwarder-For"
    "X-Custom-IP-Authorization"
    "True-Client-IP"
    "Cluster-Client-IP"
    "X-Request-Host"
    "X-Forwarded-Scheme"
)

# Test each URL
for url in "${urls[@]}"; do
    echo ""
    echo "[🔍] Scanning: $url"
    echo "----------------------------------------------"
    vulnerable=false

    for header in "${headers[@]}"; do
        echo "   ↳ Testing $header: evil.com"
        response=$(curl -sk -H "$header: evil.com" "$url" -i)

        if echo "$response" | grep -qi "evil.com"; then
            echo "   ✅ VULNERABLE using header ➜ $header"
            vulnerable=true
        else
            echo "   ❌ Not vulnerable with header ➜ $header"
        fi
    done

    if [ "$vulnerable" = false ]; then
        echo "⚠️  No Host Header Injection found on $url"
    fi
    echo "----------------------------------------------"
done

echo ""
echo "✅ Scan Complete."
