// Google Cloud
variable "bucket_name" {
  description = "Cloud Storage bucket for storing Cloud Function code archives."
}

variable "project" {
  description = "The ID of the project to apply any resources to."
  default     = ""
}

// Slack
variable "verification_token" {
  description = "Slack verification token."
}

// Pub/Sub Topics
variable "event_types" {
  description = "Pub/Sub topic names for handing events."
  type        = "list"
  default     = []
}

// Cloud Function
variable "description" {
  description = "Description of the function."
  default     = "Slack event publisher"
}

variable "function_name" {
  description = "Cloud Function for publishing events from Slack to Pub/Sub."
  default     = "slack-event-publisher"
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the function."
  type        = "map"

  default {
    deployment-tool = "terraform"
  }
}

variable "memory" {
  description = "Memory for Slack event listener."
  default     = 256
}

variable "timeout" {
  description = "Timeout in seconds for Slack event listener."
  default     = 10
}
