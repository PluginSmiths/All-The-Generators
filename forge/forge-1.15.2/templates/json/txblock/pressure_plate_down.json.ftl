{
    "parent": "block/pressure_plate_down",
    "textures": {
        <#if data.particleTexture?has_content>"particle": "${data.particleTexture.format("%s:block/%s")}",</#if>
        "texture": "${data.texture.format("%s:block/%s")}"
    },
    "render_type": "${data.getRenderType()}"
}