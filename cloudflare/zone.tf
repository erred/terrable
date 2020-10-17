resource "cloudflare_zone" "seankhliao_com" {
  zone       = "seankhliao.com"
}

resource "cloudflare_zone_settings_override" "seankhliao_com" {
  zone_id = cloudflare_zone.seankhliao_com.id

  settings {
    always_online            = "on"
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    brotli                   = "on"
    development_mode         = "off"
    email_obfuscation        = "off"
    http3                    = "on"
    ipv6                     = "on"
    opportunistic_encryption = "on"
    zero_rtt                 = "on"

    cache_level     = "simplified"
    min_tls_version = "1.3"
    ssl             = "strict"
    tls_1_3         = "zrt"

    browser_cache_ttl = 14400
    challenge_ttl     = 1800
    max_upload        = 100

    minify {
      css  = "off"
      html = "off"
      js   = "off"
    }
  }
}
