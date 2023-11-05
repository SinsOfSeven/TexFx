// ---- Created with 3Dmigoto v1.3.16 on Fri Oct 13 18:44:30 2023
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

Texture2D<float4> t74 : register(t74);
Texture2D<float4> t73 : register(t73);
Texture2D<float4> t72 : register(t72);
Texture2D<float4> t71 : register(t71);
Texture2D<float4> t69 : register(t69);

SamplerState s15_s : register(s15);
SamplerState s14_s : register(s14);
SamplerState s13_s : register(s13);
SamplerState s12_s : register(s12);

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
  float4 cb1[9];//unity constants???
}

cbuffer cb0 : register(b0)
{
  float4 cb0[90];
}

// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);

void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float2 v6 : TEXCOORD4,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float o3 : SV_Target3,
  out float o4 : SV_Target4,
  out float o5 : SV_Target5)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 
  ini0,ini69,
  ren1,ren2,ren3,ren4,
  mask,diffuse,lightmap,normalmap;

  uint4 bitmask, uiDest;
  float4 fDest;

  ini0.xyzw = IniParams.Load(0).xyzw;
  ini69.xyzw = IniParams.Load(69).xyzw;
  
  //Diffuse Color
  normalmap.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  diffuse.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  lightmap.xyzw = t2.Sample(s2_s, v2.xy).xyzw;
  

  mask.xyzw = t69.Sample(s12_s, v2.xy).xyzw;
  if(mask.w == 0.0) discard;
  //mask.w = 1-mask.w;
  
  //r0.xyzw = r0.xyzw * float4(1,1,1,0);
  //o1.xyzw = r1.xyzw * float4(0.5,0.5,0.5,0) + float4(0.5,0.5,0.5,0);
  //Get Render Traget Samples
  ren1.xyzw = t71.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  //ren2.xyzw = t72.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  //ren3.xyzw = t73.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  //ren4.xyzw = t74.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  o2.xyz = float3(
    lerp(diffuse.x, ren1.x, mask.w),
    lerp(diffuse.y, ren1.y, mask.w),
    lerp(diffuse.z, ren1.z, mask.w)
  );
  // o2.xyz = float3(
  //   lerp(ren1.x, ren4.x, ren4.x),
  //   lerp(ren1.y, ren4.x, ren4.x),
  //   lerp(ren1.z, ren4.x, ren4.x)
  // );
  //o1.w *= ren1.x;
  o1.w = 1.0;
  o2.w = 1.0;

  o1 = diffuse;
  //o2 = diffuse;
  
  o0.xyz = v3.xyz;
  o0.w = 1;
  o3.x = 0.0;
  o4.x = 0.0;
  o5.x = 0.0; 
  return;
}
