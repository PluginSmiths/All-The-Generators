(${input$entity} instanceof LivingEntity _livingEntity${cbi} && _livingEntity${cbi}.getAttributes().hasAttribute(${generator.map(field$attribute, "attributes")})
? _livingEntity${cbi}.getAttributeValue((${generator.map(field$attribute, "attributes")}) : 0)