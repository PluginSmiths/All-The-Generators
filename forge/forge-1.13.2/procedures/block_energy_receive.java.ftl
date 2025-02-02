<#include "mcelements.ftl">
<#-- @formatter:off -->
{
	BlockEntity _ent = world.getBlockEntity(${toBlockPos(input$x,input$y,input$z)});
	int _amount = ${opt.toInt(input$amount)};
	if (_ent != null)
		_ent.getCapability(ForgeCapabilities.ENERGY, ${input$direction}).ifPresent(capability ->
			capability.receiveEnergy(_amount, false));
}
<#-- @formatter:on -->