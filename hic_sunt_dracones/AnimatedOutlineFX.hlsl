
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

//

Texture2D<float4> t74 : register(t74);
Texture2D<float4> t73 : register(t73);
Texture2D<float4> t72 : register(t72);
Texture2D<float4> t71 : register(t71);
Texture2D<float4> t69 : register(t69);

SamplerState s15_s : register(s15);
SamplerState s14_s : register(s14);
SamplerState s13_s : register(s13);
SamplerState s12_s : register(s12);

//

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[17];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[90];
}

//cb1[7]ource Structured Buffer from Ini to control shader options.
struct SwitchBuf {
    //Needs to describe the texels, aka ratio. 
    //Describe the Texels with texture walk, the direction of the walk etc.
	float version;
  int2 ratio;
  //walk.xy (0 = still, - = left/up, + = right/down)
  //walk.
  float4 walk;
};
StructuredBuffer<SwitchBuf> SwitchBufs : register(t68);

#define swtch SwitchBufs[0]
#define modesty IniParams[69].x
// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);

#ifdef PIXEL_SHADER
void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float2 v6 : TEXCOORD4,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float o3 : SV_Target3,
  out float o4 : SV_Target4,
  out float o5 : SV_Target5//,
  //out float oDepth: SV_Depth
){
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,
  ren1,ren2,ren3,ren4,
  region,
  mask,diffuse,lightmap,normalmap;
  //calc texcoord offset
  float2 txo, tmo, velocity,size;
  float cycle = 20;
  size = float2(2,2);
  region = float4(2,2,2,2);
  velocity = float2(0.1,0);
  tmo.xy = float2(cb1[0].x%1,cb1[0].w%1);

  mask.xyzw = t69.Sample(s12_s, frac(v2.xy+tmo.xy)).xyzw;
  if(mask.x <= 0.005) discard;
  if(mask.x >= 0.995) discard;
  mask.x = mask.x;

  ren1.xyzw = t71.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  ren2.xyzw = t72.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  // ren3.xyzw = t73.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  // ren4.xyzw = t74.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  // normalmap.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  diffuse.xyzw = t0.Sample(s1_s, v2.xy).xyzw;
  // lightmap.xyzw = t2.Sample(s2_s, v2.xy).xyzw;

  ren1 = ren1 + ren2;
  ren1 = clamp(ren1,0,1);
  
  
  //pray
  r0 = float4(0,0,0,0);
  r3 = float4(0,0,0,0); r4 = float4(0,0,0,0); r5 = float4(0,0,0,0); r6 = float4(0,0,0,0);
  r0.x = -1 + cb0[64].z;
  r4.xyzw = t1.SampleBias(s1_s, v2.xy, r0.x).xyzw;
  r3.xy = cmp(float2(0,0) != cb0[33].xy);
  r0.x = cmp(0 != cb0[48].x);
  r5.xyzw = cmp(r4.wwww >= float4(0.800000012,0.400000006,0.200000003,0.600000024));
  r0.x = r0.x ? r5.x : 0;
  r0.x = r0.x ? 2 : 1;
  r3.w = cmp(0 != cb0[51].w);
  r3.w = r5.y ? r3.w : 0;
  r6.xyz = cmp(r4.www < float3(0.600000024,0.400000006,0.800000012));
  r3.w = r3.w ? r6.x : 0;
  r0.x = r3.w ? 3 : r0.x;
  r3.w = cmp(0 != cb0[55].w);
  r3.w = r5.z ? r3.w : 0;
  r3.w = r6.y ? r3.w : 0;
  r0.x = r3.w ? 4 : r0.x;
  r3.w = cmp(0 != cb0[59].w);
  r3.w = r5.w ? r3.w : 0;
  r3.w = r6.z ? r3.w : 0;
  r0.x = r3.w ? 5 : r0.x;
  r5.xyzw = cmp(r0.xxxx == float4(2,3,4,5));
  //

  r2.xyz = float3(
    lerp(diffuse.x, ren1.x, mask.x),
    lerp(diffuse.y, ren1.y, mask.x),
    lerp(diffuse.z, ren1.z, mask.x)
  );
  //r2 = diffuse;
  r2.w = 0.0;

  o0.xyz = v3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = r5.x ? 0.333000 : 0;
  o1 = float4(0,0,0,0);
  o1.xyz = r2.xyz;
  o1.w = 0.2;
  o2.xyz = r2.xyz;
  o2.w = 1;
  o3.x = 0.0;
  o4.x = 0.0;
  o5.x = 0.0;

  return;
}
#endif