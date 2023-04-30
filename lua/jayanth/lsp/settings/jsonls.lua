local default_schemas = nil
local status_ok, jsonls_settings = pcall(require, "nlspsettings.jsonls")
if status_ok then
	default_schemas = jsonls_settings.get_default_schemas()
end

local schemas = {
	{
		description = "typescript compiler configuration file",
		filematch = {
			"tsconfig.json",
			"tsconfig.*.json",
		},
		url = "https://json.schemastore.org/tsconfig.json",
	},
	{
		description = "lerna config",
		filematch = { "lerna.json" },
		url = "https://json.schemastore.org/lerna.json",
	},
	{
		description = "babel configuration",
		filematch = {
			".babelrc.json",
			".babelrc",
			"babel.config.json",
		},
		url = "https://json.schemastore.org/babelrc.json",
	},
	{
		description = "eslint config",
		filematch = {
			".eslintrc.json",
			".eslintrc",
		},
		url = "https://json.schemastore.org/eslintrc.json",
	},
	{
		description = "bucklescript config",
		filematch = { "bsconfig.json" },
		url = "https://raw.githubusercontent.com/rescript-lang/rescript-compiler/8.2.0/docs/docson/build-schema.json",
	},
	{
		description = "prettier config",
		filematch = {
			".prettierrc",
			".prettierrc.json",
			"prettier.config.json",
		},
		url = "https://json.schemastore.org/prettierrc",
	},
	{
		description = "vercel now config",
		filematch = { "now.json" },
		url = "https://json.schemastore.org/now",
	},
	{
		description = "stylelint config",
		filematch = {
			".stylelintrc",
			".stylelintrc.json",
			"stylelint.config.json",
		},
		url = "https://json.schemastore.org/stylelintrc",
	},
	{
		description = "a json schema for the asp.net launchsettings.json files",
		filematch = { "launchsettings.json" },
		url = "https://json.schemastore.org/launchsettings.json",
	},
	{
		description = "schema for cmake presets",
		filematch = {
			"cmakepresets.json",
			"cmakeuserpresets.json",
		},
		url = "https://raw.githubusercontent.com/kitware/cmake/master/help/manual/presets/schema.json",
	},
	{
		description = "configuration file as an alternative for configuring your repository in the settings page.",
		filematch = {
			".codeclimate.json",
		},
		url = "https://json.schemastore.org/codeclimate.json",
	},
	{
		description = "llvm compilation database",
		filematch = {
			"compile_commands.json",
		},
		url = "https://json.schemastore.org/compile-commands.json",
	},
	{
		description = "config file for command task runner",
		filematch = {
			"commands.json",
		},
		url = "https://json.schemastore.org/commands.json",
	},
	{
		description = "aws cloudformation provides a common language for you to describe and provision all the infrastructure resources in your cloud environment.",
		filematch = {
			"*.cf.json",
			"cloudformation.json",
		},
		url = "https://raw.githubusercontent.com/awslabs/goformation/v5.2.9/schema/cloudformation.schema.json",
	},
	{
		description = "the aws serverless application model (aws sam, previously known as project flourish) extends aws cloudformation to provide a simplified way of defining the amazon api gateway apis, aws lambda functions, and amazon dynamodb tables needed by your serverless application.",
		filematch = {
			"serverless.template",
			"*.sam.json",
			"sam.json",
		},
		url = "https://raw.githubusercontent.com/awslabs/goformation/v5.2.9/schema/sam.schema.json",
	},
	{
		description = "json schema for properties json file for a github workflow template",
		filematch = {
			".github/workflow-templates/**.properties.json",
		},
		url = "https://json.schemastore.org/github-workflow-template-properties.json",
	},
	{
		description = "golangci-lint configuration file",
		filematch = {
			".golangci.toml",
			".golangci.json",
		},
		url = "https://json.schemastore.org/golangci-lint.json",
	},
	{
		description = "json schema for the json feed format",
		filematch = {
			"feed.json",
		},
		url = "https://json.schemastore.org/feed.json",
		versions = {
			["1"] = "https://json.schemastore.org/feed-1.json",
			["1.1"] = "https://json.schemastore.org/feed.json",
		},
	},
	{
		description = "packer template json configuration",
		filematch = {
			"packer.json",
		},
		url = "https://json.schemastore.org/packer.json",
	},
	{
		description = "npm configuration file",
		filematch = {
			"package.json",
		},
		url = "https://json.schemastore.org/package.json",
	},
	{
		description = "json schema for visual studio component configuration files",
		filematch = {
			"*.vsconfig",
		},
		url = "https://json.schemastore.org/vsconfig.json",
	},
	{
		description = "resume json",
		filematch = { "resume.json" },
		url = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json",
	},
}

local function extend(tab1, tab2)
	for _, value in ipairs(tab2 or {}) do
		table.insert(tab1, value)
	end
	return tab1
end

local extended_schemas = extend(schemas, default_schemas)

local opts = {
	settings = {
		json = {
			schemas = extended_schemas,
		},
	},
	setup = {
		commands = {
			format = {
				function()
					vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
				end,
			},
		},
	},
}

return opts
