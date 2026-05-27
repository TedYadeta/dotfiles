# hashicorp_scaffolding.tf
# Run me in your homedir!

resource "local_file" "hashicorp_scaffolding" {
	for_each = toset([
		"lang/hashicorp/terraform/readme.txt",
		"lang/hashicorp/packer/readme.txt",
		"lang/hashicorp/nomad/readme.txt",
		"lang/hashicorp/consul/readme.txt",
		"lang/hashicorp/sentinel/readme.txt",
		"lang/hashicorp/boundary/readme.txt",
		"lang/hashicorp/vault/readme.txt"
	])

	filename = "${path.module}/${each.value}"
	content  = "Placeholder for ${each.value}"
}