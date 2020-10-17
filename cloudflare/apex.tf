resource "cloudflare_record" "cloudrun_apex_a_1" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "A"
  proxied = true
  value   = "216.239.32.21"
}
resource "cloudflare_record" "cloudrun_apex_a_2" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "A"
  proxied = true
  value   = "216.239.34.21"
}
resource "cloudflare_record" "cloudrun_apex_a_3" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "A"
  proxied = true
  value   = "216.239.36.21"
}
resource "cloudflare_record" "cloudrun_apex_a_4" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "A"
  proxied = true
  value   = "216.239.38.21"
}
resource "cloudflare_record" "cloudrun_apex_aaaa_1" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "AAAA"
  proxied = true
  value   = "2001:4860:4802:32::15"
}
resource "cloudflare_record" "cloudrun_apex_aaaa_2" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "AAAA"
  proxied = true
  value   = "2001:4860:4802:34::15"
}
resource "cloudflare_record" "cloudrun_apex_aaaa_3" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "AAAA"
  proxied = true
  value   = "2001:4860:4802:36::15"
}
resource "cloudflare_record" "cloudrun_apex_aaaa_4" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "AAAA"
  proxied = true
  value   = "2001:4860:4802:38::15"
}
