<#include "procedures.java.ftl">
public class ${name}Procedure {
	ServerTickEvents.END_SERVER_TICK.register((server) -> {
		for(ServerLevel i : server.getAllLevels()) {
		    for(ServerPlayers j : i.players()) {
		        <#assign dependenciesCode><#compress>
			        <@procedureDependenciesCode dependencies, {
			        "x": "j.getX()",
			        "y": "j.getY()",
			        "z": "j.getZ()",
			        "world": "i",
			        "entity": "j"
			        }/>
		        </#compress></#assign>
		        execute(${dependenciesCode});
		    }
		}
	}