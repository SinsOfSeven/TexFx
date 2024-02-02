// ---- Created with 3Dmigoto v1.3.16 on Fri Feb  2 15:59:18 2024
cbuffer cb4 : register(b4)
{
  float4 cb4[13];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[8];
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
  float4 cb0[47];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);
#define hull_hack IniParams[69].w
#define OFFSET IniParams[169].x


void main(
  float4 v0 : POSITION0,
  float4 v1 : COLOR0,
  float3 v2 : NORMAL0,
  float4 v3 : TANGENT0,
  float4 v4 : TEXCOORD0,
  float2 v5 : TEXCOORD1,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : COLOR0,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD1,
  out float4 o4 : TEXCOORD2)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;
  if(hull_hack==0)  v1.zw = float2(0.0,0.0);
  r5.xyzw = float4(0.0,0.0,0.0,0.0);
  o0 = r5;
  o1 = r5;
  o2 = r5;
  o3 = r5;
  o4 = r5;

  r0.x = cmp(cb0[16].x == 0.000000);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o4.xyzw = float4(0,0,0,0);
    o3.xyz = float3(0,0,0);
    o2.xy = float2(0,0);
  }
  if (r0.x == 0) {
    r0.xy = cmp(float2(0,0) != cb0[28].yz);
    r0.z = cmp(abs(cb0[29].w) < 0.00100000005);
    r1.xyz = cb0[29].xyz * cb0[29].www;
    r1.xyz = r0.zzz ? float3(0,0,0) : r1.xyz;
    r2.xyzw = cb3[5].xyzw * r1.yyyy;
    r2.xyzw = cb3[4].xyzw * r1.xxxx + r2.xyzw;
    r1.xyzw = cb3[6].xyzw * r1.zzzz + r2.xyzw;
    r1.xyzw = cb3[7].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r2.xyz = cb3[5].xyz * cb0[29].yyy;
    r2.xyz = cb3[4].xyz * cb0[29].xxx + r2.xyz;
    r2.xyz = cb3[6].xyz * cb0[29].zzz + r2.xyz;
    r0.z = dot(r1.xyz, r2.xyz);
    r0.w = dot(v0.xyz, r2.xyz);
    r1.x = cmp(r0.w < r0.z);
    r0.z = r0.w + -r0.z;
    r2.xyz = -r0.zzz * r2.xyz + v0.xyz;
    r2.w = 0;
    r3.xyz = v0.xyz;
    r3.w = 1;
    r1.xyzw = r1.xxxx ? r2.xyzw : r3.xyzw;
    r0.z = dot(v0.xyz, cb0[29].xyz);
    r0.w = -0.00999999978 + cb0[29].w;
    r0.w = cmp(r0.z < r0.w);
    r0.z = -cb0[29].w + r0.z;
    r2.xyz = -r0.zzz * cb0[29].xyz + v0.xyz;
    r2.w = 0;
    r2.xyzw = r0.wwww ? r2.xyzw : r3.xyzw;
    r1.xyzw = r0.yyyy ? r1.xyzw : r2.xyzw;
    r0.xyzw = r0.xxxx ? r1.xyzw : r3.xyzw;
    r1.xyw = cb3[3].xyz + -cb1[5].xyz;
    r2.x = cb3[0].x;
    r2.y = cb3[1].x;
    r2.z = cb3[2].x;
    r2.w = r1.x;
    r3.xyz = r0.xyz;
    r3.w = v0.w;
    r2.x = dot(r2.xyzw, r3.xyzw);
    r4.x = cb3[0].y;
    r4.y = cb3[1].y;
    r4.z = cb3[2].y;
    r4.w = r1.y;
    r2.y = dot(r4.xyzw, r3.xyzw);
    r1.x = cb3[0].z;
    r1.y = cb3[1].z;
    r1.z = cb3[2].z;
    r2.z = dot(r1.xyzw, r3.xyzw);
    r1.x = cb3[0].w;
    r1.y = cb3[1].w;
    r1.z = cb3[2].w;
    r1.w = cb3[3].w;
    r2.w = dot(r1.xyzw, r3.xyzw);
    r0.x = cb4[9].x;
    r0.y = cb4[10].x;
    r0.z = cb4[11].x;
    r0.x = dot(r0.xyz, r2.xyz);
    r2.y = r2.y + OFFSET;
    r1.x = cb4[9].y;
    r1.y = cb4[10].y;
    r1.z = cb4[11].y;
    r0.y = dot(r1.xyz, r2.xyz);
    r1.x = cb4[9].z;
    r1.y = cb4[10].z;
    r1.z = cb4[11].z;
    r0.z = dot(r1.xyz, r2.xyz);
    r1.x = cb4[9].w;
    r1.y = cb4[10].w;
    r1.z = cb4[11].w;
    r1.w = cb4[12].w;
    r1.x = dot(r1.xyzw, r2.xyzw);
    r1.y = cmp(cb0[16].x == 1.000000);
    r1.yzw = r1.yyy ? v2.xyz : v3.xyz;
    r2.xyz = cb3[1].xyz * r1.zzz;
    r2.xyz = cb3[0].xyz * r1.yyy + r2.xyz;
    r1.yzw = cb3[2].xyz * r1.www + r2.xyz;
    r2.xy = cb4[10].xy * r1.zz;
    r1.yz = cb4[9].xy * r1.yy + r2.xy;
    r2.xy = cb4[11].xy * r1.ww + r1.yz;
    r2.z = 0.00999999978;
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = rsqrt(r1.y);
    r1.yz = r2.xy * r1.yy;
    r1.w = 2.41400003 / cb2[7].y;
    r2.x = r1.w * -r0.z;
    r2.x = cmp(r2.x < cb0[22].y);
    r3.xy = r2.xx ? cb0[22].xy : cb0[22].yz;
    r3.zw = r2.xx ? cb0[23].xy : cb0[23].yz;
    r1.w = -r0.z * r1.w + -r3.x;
    r2.xy = r3.yw + -r3.xz;
    r2.x = max(0.00100000005, r2.x);
    r1.w = saturate(r1.w / r2.x);
    r1.w = r1.w * r2.y + r3.z;
    r2.x = cb0[46].w * cb0[18].x;
    r1.w = r2.x * r1.w;
    r1.w = 100 * r1.w;
    r1.w = cb0[20].z * r1.w;
    r1.w = 0.414250195 * r1.w;
    r1.w = v1.w * r1.w;
    r2.x = dot(r0.xyz, r0.xyz);
    r2.x = rsqrt(r2.x);
    r2.xyz = r2.xxx * r0.xyz;
    r2.xyz = cb0[20].xxx * r2.xyz;
    r2.xyz = cb0[20].zzz * r2.xyz;
    r2.w = -0.5 + v1.z;
    r0.xyz = r2.xyz * r2.www + r0.xyz;
    r0.xy = r1.yz * r1.ww + r0.xy;
    r2.xyzw = cb4[6].xyzw * r0.yyyy;
    r2.xyzw = cb4[5].xyzw * r0.xxxx + r2.xyzw;
    r2.xyzw = cb4[7].xyzw * r0.zzzz + r2.xyzw;
    r1.xyzw = cb4[8].xyzw * r1.xxxx + r2.xyzw;
    r0.x = cmp(0 != cb0[33].y);
    r2.xz = float2(0.5,0.5) * r1.xw;
    r0.y = cb1[6].x * r1.y;
    r2.w = 0.5 * r0.y;
    r0.yz = r2.xw + r2.zz;
    o4.xy = r0.xx ? r0.yz : 0;
    o4.z = r0.x ? cb0[33].z : 0;
    o4.w = r0.x ? r1.w : 0;
    o2.xy = v4.xy * cb0[32].xy + cb0[32].zw;
    o0.xyzw = r1.xyzw;
    o1.xyz = cb0[19].xyz;
    o1.w = r0.w;
    o3.xyz = float3(0,0,0);
  }
  return;
}