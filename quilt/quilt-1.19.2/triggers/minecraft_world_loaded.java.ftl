<#include "procedures.java.ftl">
public class ${name}Procedure {
    ServerWorldEvents.LOAD.register((server, world) -> {
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"world": "world"
			}/>
		</#compress></#assign>
		execute(${dependenciesCode});
	});
}
