# mail

resource "cloudflare_record" "mailgun_email_1" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "email"
  type    = "CNAME"
  value   = "mailgun.org"
  proxied = true
}

resource "cloudflare_record" "mx_1" {
  zone_id  = cloudflare_zone.seankhliao_com.id
  name     = "seankhliao.com"
  type     = "MX"
  value    = "mxa.mailgun.org"
  priority = 10
}

resource "cloudflare_record" "mx_2" {
  zone_id  = cloudflare_zone.seankhliao_com.id
  name     = "seankhliao.com"
  type     = "MX"
  value    = "mxb.mailgun.org"
  priority = 15
}

resource "cloudflare_record" "spf" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "TXT"
  value   = "v=spf1 include:mailgun.org ~all"
}

resource "cloudflare_record" "dkim" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "seankhliao.com"
  type    = "TXT"
  value   = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDPpKLA8TRZvEPch28cGA3csPxU+khap8dk0E1gJ1vDaxpObIf1s/9p21NWjpDTGryuOpCrppBWSqEA2KFKjeKA2BVt6COr35herDpmwHeUYU6O8bWS0MaDtA8Pg2d7r6ii8YIH9d7w87zIUjdqgORJh/9gukHfUVWw9K3B1cEoFwIDAQAB"
}

resource "cloudflare_record" "dmarc" {
  zone_id = cloudflare_zone.seankhliao_com.id
  name    = "_dmarc"
  type    = "TXT"
  value   = "v=DMARC1;p=reject;adkim=r;aspf=r;ruf=mailto:dmarc-forensic@seankhliao.com;rua=mailto:dmarc-aggregate@seankhliao.com;fo=1;ri=86400;pct=100;rf=afrf;"
}
