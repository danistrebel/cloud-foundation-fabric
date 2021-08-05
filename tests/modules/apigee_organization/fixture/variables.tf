/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "authorized_network" {
  type    = string
  default = null
}

variable "analytics_region" {
  type    = string
  default = "europe-west1"
}

variable "apigee_envgroups" {
  type = map(object({
    environments = list(string)
    hostnames    = list(string)
  }))
  default = {
    eval = {
      environments = [
        "eval1",
        "eval2"
      ]
      hostnames = [
        "eval.api.example.com"
      ]
    }
  }
}

variable "apigee_environments" {
  type = list(string)
  default = [
    "eval1",
    "eval2"
  ]
}

variable "database_encryption_key" {
  type    = string
  default = null
}

variable "display_name" {
  type    = string
  default = null
}

variable "runtime_type" {
  type    = string
  default = "CLOUD"
}
