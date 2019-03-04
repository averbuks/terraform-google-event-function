/**
 * Copyright 2019 Google LLC
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

variable "function_available_memory_mb" {
  type        = "string"
  default     = "256"
  description = "The amount of memory in megabytes allotted for the function to use."
}

variable "function_description" {
  type        = "string"
  default     = "Processes log export events provided through a Pub/Sub topic subscription."
  description = "The description of the function."
}

variable "function_entry_point" {
  type        = "string"
  description = "The name of a method in the function source which will be invoked when the function is executed."
}

variable "function_environment_variables" {
  type        = "map"
  default     = {}
  description = "A set of key/value environment variable pairs to assign to the function."
}

variable "function_event_trigger_failure_policy_retry" {
  type        = "string"
  default     = "false"
  description = "A toggle to determine if the function should be retried on failure."
}

variable "function_event_trigger_event_type" {
  type        = "string"
  description = "The type of event for the function to observe."
}

variable "function_event_trigger_resource" {
  type        = "string"
  description = "The name of the resource from which the function will observe events."
}

variable "function_labels" {
  type        = "map"
  default     = {}
  description = "A set of key/value label pairs to assign to the function."
}

variable "function_runtime" {
  type        = "string"
  default     = "nodejs6"
  description = "The runtime in which the function will be executed."
}

variable "function_timeout_s" {
  type        = "string"
  default     = "60"
  description = "The amount of time in seconds allotted for the execution of the function."
}

variable "name" {
  type        = "string"
  description = "The name to apply to any nameable resources."
}

variable "project_id" {
  type        = "string"
  description = "The ID of the project to which resources will be applied."
}

variable "region" {
  type        = "string"
  description = "The region in which resources will be applied."
}

variable "source_archive_bucket" {
  type        = "string"
  description = "The name of the bucket which contains the source archive object."
  default     = ""
}

variable "source_archive_object" {
  type        = "string"
  description = "The name of the object which contains the source code of the function."
  default     = ""
}

variable "source_repository_url" {
  type        = "string"
  description = "The URL of the repository which contains the function source code."
  default     = ""
}
