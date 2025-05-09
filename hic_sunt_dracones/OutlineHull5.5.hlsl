// ---- Created with 3Dmigoto v1.3.16 on Fri Feb 14 09:05:46 2025
cbuffer cb4 : register(b4)
{
  float4 cb4[25];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[149];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
#define OFFSET IniParams[169].x

void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float4 v5 : TEXCOORD3,
  float3 v6 : NORMAL0,
  float4 v7 : TANGENT0,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD3,
  out float4 o5 : TEXCOORD4,
  out float4 o6 : TEXCOORD5,
  out float4 o7 : TEXCOORD6,
  out float4 o8 : TEXCOORD7,
  out float4 o9 : TEXCOORD8)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xyzw = float4(0,0,0,0);
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  o7.xyzw = float4(0,0,0,0);
  o8.xyzw = float4(0,0,0,0);
  o9.xyzw = float4(0,0,0,0);

  r0.xyz = cb3[1].xyz * v0.yyy;
  r0.xyz = cb3[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[2].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[3].xyz + r0.xyz;
  r1.xyz = cb1[5].xyz + -r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r1.xyz * r0.www;
  r2.x = dot(v6.xyz, cb3[4].xyz);
  r2.y = dot(v6.xyz, cb3[5].xyz);
  r2.z = dot(v6.xyz, cb3[6].xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r3.xyzw = cb3[1].xyzw * v0.yyyy;
  r3.xyzw = cb3[0].xyzw * v0.xxxx + r3.xyzw;
  r3.xyzw = cb3[2].xyzw * v0.zzzz + r3.xyzw;
  r3.xyzw = cb3[3].xyzw + r3.xyzw;
  r0.w = cb4[10].z * r3.y;
  r0.w = cb4[9].z * r3.x + r0.w;
  r0.w = cb4[11].z * r3.z + r0.w;
  r0.w = cb4[12].z * r3.w + r0.w;
  o4.w = -r0.w;
  r3.xyw = cb3[3].xyz + -cb1[5].xyz;
  r4.x = cb3[0].x;
  r4.y = cb3[1].x;
  r4.z = cb3[2].x;
  r4.w = r3.x;
  r5.xyz = v0.xyz;
  r5.w = 1;
  r4.x = dot(r4.xyzw, r5.xyzw);
  r6.x = cb3[0].y;
  r6.y = cb3[1].y;
  r6.z = cb3[2].y;
  r6.w = r3.y;
  r4.y = dot(r6.xyzw, r5.xyzw);
  r3.x = cb3[0].z;
  r3.y = cb3[1].z;
  r3.z = cb3[2].z;
  r4.z = dot(r3.xyzw, r5.xyzw);
  r3.x = cb3[0].w;
  r3.y = cb3[1].w;
  r3.z = cb3[2].w;
  r3.w = cb3[3].w;
  r4.w = dot(r3.xyzw, r5.xyzw);
  r4.y += OFFSET;
  r3.x = cb4[9].x;
  r3.y = cb4[10].x;
  r3.z = cb4[11].x;
  r3.x = dot(r3.xyz, r4.xyz);
  r5.x = cb4[9].y;
  r5.y = cb4[10].y;
  r5.z = cb4[11].y;
  r3.y = dot(r5.xyz, r4.xyz);
  r5.x = cb4[9].z;
  r5.y = cb4[10].z;
  r5.z = cb4[11].z;
  r3.z = dot(r5.xyz, r4.xyz);
  r5.x = cb4[9].w;
  r5.y = cb4[10].w;
  r5.z = cb4[11].w;
  r5.w = cb4[12].w;
  r0.w = dot(r5.xyzw, r4.xyzw);
  r5.xyz = cb3[1].xyz * v7.yyy;
  r5.xyz = cb3[0].xyz * v7.xxx + r5.xyz;
  r5.xyz = cb3[2].xyz * v7.zzz + r5.xyz;
  r5.yw = cb4[10].xy * r5.yy;
  r5.xy = cb4[9].xy * r5.xx + r5.yw;
  r5.xy = cb4[11].xy * r5.zz + r5.xy;
  r5.z = 0.00999999978;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xy = r5.xy * r1.ww;
  r1.w = 2.41400003 / cb2[7].y;
  r2.w = -r3.z * r1.w;
  r2.w = cmp(r2.w < cb0[122].y);
  r6.xy = r2.ww ? cb0[122].xy : cb0[122].yz;
  r6.zw = r2.ww ? cb0[123].xy : cb0[123].yz;
  r1.w = -r3.z * r1.w + -r6.x;
  r5.zw = r6.yw + -r6.xz;
  r2.w = max(0.00100000005, r5.z);
  r1.w = saturate(r1.w / r2.w);
  r1.w = r1.w * r5.w + r6.z;
  r2.w = cb0[146].w * cb0[121].x;
  r1.w = r2.w * r1.w;
  r1.w = v1.w * r1.w;
  r1.w = 0.414250195 * r1.w;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r3.xyz * r2.www;
  r6.xyz = cb0[121].yyy * r6.xyz;
  r6.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r6.xyz;
  r2.w = cmp(cb0[121].z < 0.5);
  r3.w = -0.5 + v1.z;
  r2.w = r2.w ? r3.w : 1;
  r3.xyz = r6.xyz * r2.www + r3.xyz;
  r3.xy = r5.xy * r1.ww + r3.xy;
  r5.xyzw = cb4[6].xyzw * r3.yyyy;
  r5.xyzw = cb4[5].xyzw * r3.xxxx + r5.xyzw;
  r3.xyzw = cb4[7].xyzw * r3.zzzz + r5.xyzw;
  r3.xyzw = cb4[8].xywz * r0.wwww + r3.xywz;
  r0.w = dot(r1.xyz, r2.xyz);
  r0.w = cmp(r0.w < 0);
  r0.w = r0.w ? cb0[28].x : 0;
  o0.z = r3.w + -r0.w;
  r0.w = cmp(0 != cb0[133].y);
  r1.x = cmp(cb0[133].z < 0.949999988);
  r1.x = r0.w ? r1.x : 0;
  r1.y = cb1[6].x * cb0[148].w;
  r5.x = cb0[148].z * r3.z;
  r5.y = r1.y * r3.z;
  r1.yz = r5.xy * float2(2,2) + r3.xy;
  r3.xy = r1.xx ? r1.yz : r3.xy;
  r1.yz = float2(0.5,0.5);
  if (r0.w != 0) {
    r1.xz = float2(0.5,0.5);
    r1.y = cb1[6].x;
    r1.xyz = r3.xyz * r1.xyz;
    r1.w = 0.5 * r1.y;
    o3.xy = r1.xw + r1.zz;
    o3.z = cb0[133].z;
    o3.w = r3.z;
  } else {
    r1.xyzw = cb4[22].xyzw * r4.yyyy;
    r1.xyzw = cb4[21].xyzw * r4.xxxx + r1.xyzw;
    r1.xyzw = cb4[23].xyzw * r4.zzzz + r1.xyzw;
    r1.xyzw = cb4[24].xyzw * r4.wwww + r1.xyzw;
    r4.xz = float2(0.5,0.5);
    r4.y = cb1[6].x;
    r4.xyz = r4.xyz * r1.xyw;
    r4.w = 0.5 * r4.y;
    o3.xy = r4.xw + r4.zz;
    o3.zw = r1.zw;
  }
  o0.xyw = r3.xyz;
  o1.xyz = cb0[118].xyz;
  o1.w = 1;
  o5.xyz = r2.xyz;
  o5.w = 1;
  o6.xy = v2.xy;
  o6.zw = float2(0,0);
  o7.xy = v3.xy;
  o7.zw = float2(0,0);
  o8.xy = v4.xy;
  o8.zw = v5.xy;
  o9.xyz = r0.xyz;
  o9.w = 0;
  o2.xyz = float3(0,0,0);
  return;
}