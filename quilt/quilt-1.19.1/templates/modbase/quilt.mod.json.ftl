<#-- @formatter:off -->
{
  "schemaVersion": 1,
  "id": "${settings.getModID()}",
  "version": "${settings.getVersion()}",

  "name": "${settings.getModName()}",
<#if settings.getDescription()?has_content>
  "description": "${settings.getDescription()}",
</#if>
<#if settings.getAuthor()?has_content>
  "authors": [
	"${settings.getAuthor()}"
  ],
</#if>
  "contact": {
	"homepage": "${settings.getWebsiteURL()}",
	"sources": ""
  },
  "license": "${settings.getLicense()}",
<#if settings.getModPicture()?has_content>
  "icon": "assets/${modid}/icon.png",
</#if>
  "accessWidener": "${modid}.accesswidener",
  "environment": "*",
  "entrypoints": {
	"main": [
	  "${package}.${JavaModName}"
	],
	"client":[
	  "${package}.ClientInit"
	]
  },

  "depends": {
	"fabricloader": ">=0.16.10",
	"fabric": "*",
	"minecraft": "~1.19.1",
	"java": ">=21"
  }<#if w.hasElementsOfBaseType("item") || w.hasElementsOfType("biome")>,
  "mixins": [
	"${settings.getModID()}.mixins.json"
  ]</#if>
}
<#-- @formatter:on -->
