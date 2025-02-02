<#include "procedures.java.ftl">
public class ${name}Procedure {
    ServerWorldEvents.UNLOAD.register((server, world) -> {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"world": "world"
			}/>
		</#compress></#assign>
		execute(${dependenciesCode});
	});
}
