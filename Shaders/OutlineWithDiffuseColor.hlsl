// ---- Created with 3Dmigoto v1.3.16 on Fri Oct 13 18:44:30 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,

  
  r14,r15,r16,r17,r18,r19;

  uint4 bitmask, uiDest;
  float4 fDest;

  r14.xyzw = IniParams.Load(0).xyzw;
  r0.xy = cmp(float2(0,0) != cb0[64].wx);
  r0.z = -0.00999999978 + v1.w;
  r0.z = cmp(r0.z < 0);
  r0.x = r0.x ? r0.z : 0;
  if (r0.x != 0) discard;
  if (r0.y != 0) {
    r0.x = cmp(cb0[64].y < 0.949999988);
    if (r0.x != 0) {
      r0.xy = v4.yx / v4.ww;
      r0.xy = cb1[7].yx * r0.xy;
      r0.xy = float2(0.25,0.25) * r0.xy;
      r0.zw = cmp(r0.xy >= -r0.xy);
      r0.xy = frac(abs(r0.xy));
      r0.xy = r0.zw ? r0.xy : -r0.xy;
      r0.xy = float2(4,4) * r0.xy;
      r0.xy = (uint2)r0.xy;
      r1.x = dot(cb0[8].xyzw, icb[r0.y+0].xyzw);
      r1.y = dot(cb0[9].xyzw, icb[r0.y+0].xyzw);
      r1.z = dot(cb0[10].xyzw, icb[r0.y+0].xyzw);
      r1.w = dot(cb0[11].xyzw, icb[r0.y+0].xyzw);
      r0.x = dot(r1.xyzw, icb[r0.x+0].xyzw);
      r0.x = cb0[64].y * 17 + -r0.x;
      r0.x = -0.00999999978 + r0.x;
      r0.x = cmp(r0.x < 0);
      if (r0.x != 0) discard;
    }
  }
  o1.xyz = r0.xyz;
  //r19.xyzw = IniParams.Load(69).xyzw;
  r0.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r15.xyzw = t69.Sample(s14_s, v2.xy).xyzw;
  if(r15.w < 0.004) discard;
  r15.w = cmp(r15.w < 0.004);
  //r0.w = r1.w;
  
  //r0.xyzw = r0.xyzw * float4(1,1,1,0);
  //o1.xyzw = r1.xyzw * float4(0.5,0.5,0.5,0) + float4(0.5,0.5,0.5,0);
  r16.xyzw = t71.Sample(s15_s, float2(v0.x/r14.x, v0.y/r14.y)).xyzw;
  //r17.xyzw = t72.Sample(s15_s, float2(v0.x/r14.x*0.99, v0.y/r14.y*0.99)).xyzw;
  //r18.xyzw = t73.Sample(s15_s, float2(v0.x/r14.x*0.99, v0.y/r14.y*0.99)).xyzw;

  o1 = r15.xyzw;
  o1.w = 1 - o1.w;
  o2 = r16.xyzx;
  o2.w = 1 - o2.w;
  //if (r15.w > 0){
  //o1.xyzw = float4(lerp(r0.x, r17.x, 0.5),lerp(r0.y, r17.y, 0.5),lerp(r0.z, r16.z, 0.5),1);
  //o2.xyzw = float4(lerp(r0.x, r18.x, 0.5),lerp(r0.y, r18.y, 0.5),lerp(r0.z, r18.z, 0.5),1);
  //o1.w *= r19.x;
  o0.xyz = v3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = 0.0;
  //o2.xyzw = o2.xyzw * float4(0.5,0.5,0.5,0.5) + float4(0.5,0.5,0.5,0.5);
  //o2.w = r1.w;
  //o2.w *= 0.5;
  o3.x = 0.5;
  o4.x = 0;
  o5.x = 0;
  return;
}
