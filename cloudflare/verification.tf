resource "cloudflare_record" "github_erred" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "_github-challenge-erred"
  type    = "TXT"
  value   = "efa6dcac02"
}

resource "cloudflare_record" "google_site" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "TXT"
  value   = "google-site-verification=PcA6ADCwVhvsPmq1x3tHWX9IqDw_D6kPi3_dYOHDX7M"
}
