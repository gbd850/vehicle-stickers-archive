texture Tex0;   //-- Replacement texture


//---------------------------------------------------------------------
// Include some common stuff
//---------------------------------------------------------------------
#include "mta-helper.fx"


//-----------------------------------------------------------------------
//-- Sampler for the new texture
//-----------------------------------------------------------------------
sampler Sampler0 = sampler_state
{
    Texture = (Tex0);
};

sampler Sampler1 = sampler_state
{
    Texture = (gTexture0);
};


//-----------------------------------------------------------------------
//-- Structure of data sent to the vertex shader
//-----------------------------------------------------------------------
struct VSInput
{
    float3 Position : POSITION0;
    float3 Normal : NORMAL0;
    float4 Diffuse : COLOR0;
    float2 TexCoord : TEXCOORD0;
};

//-----------------------------------------------------------------------
//-- Structure of data sent to the pixel shader ( from the vertex shader )
//-----------------------------------------------------------------------
struct PSInput
{
    float4 Position : POSITION0;
    float4 Diffuse : COLOR0;
    float4 Diffuse2 : COLOR1;
    float2 TexCoord : TEXCOORD0;
};


//--------------------------------------------------------------------------------------------
//-- VertexShaderFunction
//--  1. Read from VS structure
//--  2. Process
//--  3. Write to PS structure
//--------------------------------------------------------------------------------------------
float4 MTACalcGTAVehicleDiffuse_2( float3 WorldNormal, float4 InDiffuse )
{
    // Calculate diffuse color by doing what D3D usually does
    float4 ambient  = gAmbientMaterialSource  == 0 ? gMaterialAmbient  : InDiffuse;
    float4 diffuse  = gDiffuseMaterialSource  == 0 ? gMaterialDiffuse  : InDiffuse;
    float4 emissive = gEmissiveMaterialSource == 0 ? gMaterialEmissive : InDiffuse;

    float4 TotalAmbient = float4(0.15,0.15,0.15,1) * ( gGlobalAmbient + gLightAmbient );

    // Add the strongest light
    float DirectionFactor = max(0,dot(WorldNormal, -gLightDirection ));
    float4 TotalDiffuse = ( float4(1,1,1,1) * gLightDiffuse * DirectionFactor );

    float4 OutDiffuse = saturate(TotalDiffuse + TotalAmbient + emissive);
    OutDiffuse.a *= diffuse.a;

    return OutDiffuse;
}
PSInput VertexShaderFunction(VSInput VS)
{
    PSInput PS = (PSInput)0;

    //-- Calculate screen pos of vertex
    PS.Position = mul(float4(VS.Position, 1), gWorldViewProjection);

    //-- Pass through tex coord
    PS.TexCoord = VS.TexCoord;

    // Calculate GTA lighting for vehicles
    float3 WorldNormal = MTACalcWorldNormal( VS.Normal );
    PS.Diffuse = MTACalcGTAVehicleDiffuse( WorldNormal, VS.Diffuse );

    //-----------------------------------------------------
    // Specular lighting calc
    //-----------------------------------------------------
    float3 camDir = MTACalculateCameraDirection( gCameraPosition, MTACalcWorldPosition(VS.Position) );
    float specular = 0.13*MTACalculateSpecular( camDir, gLightDirection, WorldNormal, 7 );
    PS.Diffuse += specular;

    return PS;
}

PSInput VertexShaderFunction2(VSInput VS)
{
    PSInput PS = (PSInput)0;

    //-- Calculate screen pos of vertex
    PS.Position = mul(float4(VS.Position, 1), gWorldViewProjection);

    //-- Pass through tex coord
    PS.TexCoord = VS.TexCoord;

    // Calculate GTA lighting for vehicles
    float3 WorldNormal = MTACalcWorldNormal( VS.Normal );
    PS.Diffuse = MTACalcGTAVehicleDiffuse_2( WorldNormal, VS.Diffuse );

    //-----------------------------------------------------
    // Specular lighting calc
    //-----------------------------------------------------
    float3 camDir = MTACalculateCameraDirection( gCameraPosition, MTACalcWorldPosition(VS.Position) );
    float specular = 0.13*MTACalculateSpecular( camDir, gLightDirection, WorldNormal, 7 );
    PS.Diffuse2 = specular;

    return PS;
}


//--------------------------------------------------------------------------------------------
//-- PixelShaderFunction
//--  1. Read from PS structure
//--  2. Process
//--  3. Return pixel color
//--------------------------------------------------------------------------------------------
float4 PixelShaderFunction(PSInput PS) : COLOR0
{
    //-- Get texture pixel
    float4 texel = tex2D(Sampler1, PS.TexCoord);

    //-- Apply diffuse lighting
    float4 finalColor = texel * PS.Diffuse;

    return finalColor;
}

float4 PixelShaderFunction2(PSInput PS) : COLOR0
{
    //-- Get texture pixel
    float4 texel = tex2D(Sampler0, PS.TexCoord);


    // PS.Diffuse = float4(0.6, 0.6, 0.6, 1.0);

    //-- Apply diffuse lighting
    float4 finalColor = texel * PS.Diffuse + PS.Diffuse2;

    return finalColor;
}


//--------------------------------------------------------------------------------------------
//-- Techniques
//--------------------------------------------------------------------------------------------
technique tec
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShaderFunction();
        PixelShader = compile ps_2_0 PixelShaderFunction();
        AlphaBlendEnable = true;

    }

    pass P1
    {
        VertexShader = compile vs_2_0 VertexShaderFunction2();
        PixelShader = compile ps_2_0 PixelShaderFunction2();
    }
}

//-- Fallback
technique fallback
{
    pass P0
    {
        //-- Replace texture
        // Texture[0] = gTexture0;

        //-- Leave the rest of the states to the default settings
    }
}