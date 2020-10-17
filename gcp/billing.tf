# billing can't use default gcloud creds

# data "google_billing_account" "account" {
#   provider        = google-beta
#
#   billing_account = "016E06-6D2860-51D395"
# }
#
# resource "google_monitoring_notification_channel" "email" {
#   provider     = google-beta
#
#   display_name = "email notifications"
#   type         = "email"
#
#   labels = {
#     email_address = "seankhliao@gmail.com"
#   }
# }
#
# resource "google_billing_budget" "budget" {
#   provider        = google-beta
#
#   billing_account = data.google_billing_account.account.id
#   display_name    = "total budget"
#
#   amount {
#     specified_amount {
#       currency_code = "USD"
#       units         = "50"
#     }
#   }
#
#   threshold_rules {
#     threshold_percent = 0.5
#   }
#   threshold_rules {
#     threshold_percent = 0.9
#   }
#   threshold_rules {
#     threshold_percent = 1.0
#   }
#
#   all_updates_rule {
#     monitoring_notification_channels = [
#       google_monitoring_notification_channel.email.id
#     ]
#   }
# }
