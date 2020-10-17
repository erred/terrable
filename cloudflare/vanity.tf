resource "cloudflare_record" "cloudrun_vanity" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "go.seankhliao.com"
  type    = "CNAME"
  proxied = true
  value   = "ghs.googlehosted.com"
}
