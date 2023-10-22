// ---- Created with 3Dmigoto v1.3.16 on Fri Oct 13 18:44:30 2023
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);


Texture2D<float4> t26 : register(t26);
Texture2D<float4> t69 : register(t69);


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
  float4 cb1[9];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,

  
  r14,r15;


  uint4 bitmask, uiDest;
  float4 fDest;

  //r2.xyzw = float4(0,10,0,0);
  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r1.xyzw = t69.Sample(s0_s, v2.xy).xyzw;
  r1.w = 1 - r1.w > 0 ? 1 - r1.w : 0.0;
  r0.w = r1.w;
  //r0.xyzw = r0.xyzw * float4(1,1,1,0);
  o1.xyzw = o1.xyzw * float4(0.1,0.1,0.1,0.5) + float4(0.5,0.5,0.5,0.5);
  r15.w = t69.Sample(s0_s, v2.xy).w;
  if(r15.w < 0.005) discard;
  //r14.xyzw = t26.SampleBias(s0_s, float2(v0.x/IniParams[0].x, v0.y/IniParams[0].y), r2.y).xyzw;
  r14.xyzw = t26.Sample(s0_s, float2(v0.x/IniParams[0].x, v0.y/IniParams[0].y)).xyzw;
  if (r14.w > 0){
    if (r15.w > 0){
      r15.w = r15.w * -1 + 0.995;
      o2.xyzw = float4(lerp(r0.x, r14.x, r15.w),lerp(r0.y, r14.y, r15.w),lerp(r0.z, r14.z, r15.w),r0.w);
    }
  }
  o0.xyzw = float4(0.5,0.5,0.5,0.5);
  //o2.xyzw = o2.xyzw * float4(0.5,0.5,0.5,1.0) + float4(0.5,0.5,0.5,0.0);
  //o2.w = r1.w;
  o1.xyzw = float4(1,1,1,0);
  o1.w = r1.w != 0 ? r1.w : 1;
  o3.x = 0;
  o4.x = 0;
  o5.x = 0;
  return;
}
