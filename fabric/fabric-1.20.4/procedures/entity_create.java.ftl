<#assign entity = generator.map(field$entity, "entities", 1)!"null">
(<#if entity != "null">world instanceof Level _level ? new ${generator.map(field$entity, "entities", 0)}(${entity}, _level) : </#if>null)