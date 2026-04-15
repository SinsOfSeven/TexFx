// Made by Unicornshell

//#define VERTEX_SHADER
//#define PIXEL_SHADER

Texture1D<float4> IniParams : register(t120);
SamplerState sampler0 : register(s0);
Texture2D<float4> ShaderOutput : register(t0);
Texture2D<float4> ShaderOutput1 : register(t1);
Texture2D<float4> ShaderOutput2 : register(t2);
Texture2D<float4> ShaderOutput3 : register(t3);
// Constant flags

// 1/width, 1/height, width, height
#define RT_SIZE IniParams[0].xy
#define FLIP IniParams[0].zw
#define OVERLAY_BLEND IniParams[1].x
#define OVERLAY_NON_ZERO IniParams[1].y


#ifdef VERTEX_SHADER

void main(
    uint vid : SV_VertexID,
    out float4 pos : SV_POSITION,
    out float2 uv  : TEXCOORD0)
{
    // Fullscreen triangle
    float2 positions[3] = {
        float2(-1.0, -1.0),
        float2(-1.0,  3.0),
        float2( 3.0, -1.0)
    };

    float2 uvs[3] = {
        float2(0.0, 1.0),
        float2(0.0, -1.0),
        float2(2.0, 1.0)
    };

    pos = float4(positions[vid], 0.0, 1.0);
    uv  = uvs[vid];
}

#endif


#ifdef PIXEL_SHADER

void main(float4 svpos : SV_POSITION,
                    float2 uv : TEXCOORD0,
                    out float4 target : SV_Target0) {
          
  if (FLIP.x) uv.x = 1.0 - uv.x;
  if (FLIP.y) uv.y = 1.0 - uv.y;
  

  
    float4 color = ShaderOutput.Sample(sampler0, uv).xyzw;
    float4 color1 = ShaderOutput1.Sample(sampler0, uv).xyzw;
    float4 depth = ShaderOutput2.Sample(sampler0, uv).xyzw;
    float4 depth1 = ShaderOutput3.Sample(sampler0, uv).xyzw;
    color1.x = (depth.x >= depth1.x) ? 1 : (color1.w);
    target.xyzw = float4(color.xyz, (1-color1.x));
    
    //target.xyzw = saturate(float4(max(depth.x, ), depth.x, depth1.x, 1.0));
  
    return;
}


#endif