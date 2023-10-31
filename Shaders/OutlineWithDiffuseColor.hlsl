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
  ren1,ren2,ren3,ren4,
  ini0,ini69,
  sample0,
  mask0,
  diffuse0;

  uint4 bitmask, uiDest;
  float4 fDest;

  ini0.xyzw = IniParams.Load(0).xyzw;
  ini69.xyzw = IniParams.Load(69).xyzw;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o1.w = 0;
  
  //Diffuse Color
  diffuse0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;

  mask0.xyzw = t69.Sample(s12_s, v2.xy).xyzw;
  if(mask0.w == 0.0) discard;
  
  //r0.xyzw = r0.xyzw * float4(1,1,1,0);
  //o1.xyzw = r1.xyzw * float4(0.5,0.5,0.5,0) + float4(0.5,0.5,0.5,0);
  //Get Shadow Buffer
  ren1.xyzw = t71.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  ren2.xyzw = t72.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  ren3.xyzw = t73.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;
  ren4.xyzw = t74.Sample(s15_s, float2(v0.x/ini0.x, v0.y/ini0.y)).xyzw;

  //t74 r only
  ren4.w = ren4.x;

  sample0 = ren1 + ren2 + ren3;


  o1.xyz = float3(
    lerp(diffuse0.x, ren1.x, ren4.w),
    lerp(diffuse0.y, ren1.y, ren4.w),
    lerp(diffuse0.z, ren1.z, ren4.w)
  );
  o2.xyz = float3(
    lerp(sample0.x, ren4.x, mask0.w),
    lerp(sample0.y, ren4.w, mask0.w),
    lerp(sample0.z, ren4.w, mask0.w)
  );
  //o1.w *= ren1.x;
  o1.w = 0.5;
  
  o0.xyz = v3.xyz;
  o0.w = 0.0;
  //o2.xyzw = o2.xyzw * float4(0.5,0.5,0.5,0.5) + float4(0.5,0.5,0.5,0.5);
  //o2.w = r1.w;
  //o2.w *= 0.5;
  o3.x = 0.0;
  o4.x = 0.0;
  //o4.x = ren3.w;
  o5.x = 0.0;
  //o1.xyz *= mask0.xyz;
  //o1.w = 1 - o1.w;
  //o2.xy = o1.xy == float2(0,0) ? float2(0.4,0.6) : o1.xy;
  //o2.xyzw = diffuse0.xyzw;
  //o2.w = 1 - o2.w;

  o0.xyzw = float4(0.0,0.0,0.0,0.0);
  //o2 = o1;
  return;
}
