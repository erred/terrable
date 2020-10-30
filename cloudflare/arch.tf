resource "cloudflare_record" "arch_a" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "arch.seankhliao.com"
  type    = "A"
  proxied = false
  value   = "34.90.235.32"
}
