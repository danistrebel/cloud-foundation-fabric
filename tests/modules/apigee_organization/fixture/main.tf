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

module "test" {
  source                  = "../../../../modules/apigee-organization"
  project_id              = "my-project"
  display_name            = var.display_name
  runtime_type            = var.runtime_type
  authorized_network      = var.authorized_network
  analytics_region        = var.analytics_region
  apigee_envgroups        = var.apigee_envgroups
  apigee_environments     = var.apigee_environments
  database_encryption_key = var.database_encryption_key
}
