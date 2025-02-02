<#include "procedures.java.ftl">
public class ${name}Procedure {
	ServerMessageEvents.COMMAND_MESSAGE.register((message, source, params) -> {
		<#assign dependenciesCode><#compress>
		<@procedureDependenciesCode dependencies, {
			"command": "message"
			}/>
		</#compress></#assign>
		execute(${dependenciesCode});
	});
}