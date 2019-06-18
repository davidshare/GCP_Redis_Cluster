provider "google" {
  project 		= "${var.project}"
  credentials = "${file("./credentials/serviceaccount.json")}"
  region  		= "${var.region}"
  zone    		= "${var.zone}"
}

terraform {
  backend "gcs" {
		bucket 				= "redis_cluster"
		prefix 				= "redis_"
		credentials = "./credentials/serviceaccount.json"
	}
}
