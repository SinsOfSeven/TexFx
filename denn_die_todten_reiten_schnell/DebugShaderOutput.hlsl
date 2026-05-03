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
#define PASS IniParams[70].x


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
    float4 rt6 = ShaderOutput1.Sample(sampler0, uv).xyzw;
    float4 depth = ShaderOutput2.Sample(sampler0, uv).xyzw;
    float4 depth1 = ShaderOutput3.Sample(sampler0, uv).xyzw;
    // I want to experiment with using a loop here,
    // rather than using 2 executions of the shader.
    // if (rt6.w == 1.0) {discard;}
    // if (rt6.w == 0.0) {discard;}
    // if (rt6.g == 1.0) {discard;}
    //f (rt6.g > 0) {discard;}
    //float x = (depth.x < depth1.x) ? 1 : (rt6.w);
    // target.xyzw = float4(depth1.xx, ((float2)1.0 - rt6.ga));
    // return;
    //
    float x = (depth.x >= depth1.x) ? 1 : (rt6.w);
    if (rt6.w == 1.0) {discard;}
    if (rt6.w == 0.0) {discard;}
    //if (!x) {discard;}

    target.xyzw = float4(color.xyz, (1-x));
    if (PASS == 1.0f) {
        if (rt6.g > 0) {discard;}

        //(rt6.y < 0.5) // inner
        //target *= float4((rt6.y < 0.5),(rt6.y > 0.5),0.0,1.0);
        //target.xyzw += float4(color.xyz, (1-x)) * float4(1.0,(rt6.y > 0.5),0.0,0.5);
    } else {
        if (rt6.g < 0) {discard;}
        //target *= float4(0.0,(rt6.y > 0.5),(rt6.y < 0.5),1.0);
    }

    // if the alpha is 1, discard
    //target.xyzw = saturate(float4(max(depth.x, ), depth.x, depth1.x, 1.0));
    //if (rt6.g > 0.0) {discard;}
    //target.xyzw = float4(color.xyzw);
    //target.xyzw = float4(rt6.zzzw);
    return;
}


#endif
