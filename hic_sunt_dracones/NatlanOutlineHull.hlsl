// ---- Created with 3Dmigoto v1.3.16 on Wed Aug 28 10:24:44 2024
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
  float4 cb0[114];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;
  v1.zw = float2(0.0,0.0);
  r5.xyzw = float4(0.0,0.0,0.0,0.0);
  o0 = r5;
  o1 = r5;
  o2 = r5;
  o3 = r5;
  o4 = r5;

  r0.xyz = cb3[1].xyz * v0.yyy;
  r0.xyz = cb3[0].xyz * v0.xxx + r0.xyz;
  r0.xyz = cb3[2].xyz * v0.zzz + r0.xyz;
  r0.xyz = cb3[3].xyz + r0.xyz;
  r1.xyz = cb1[5].xyz + -r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o4.xyz = r1.xyz * r0.www;
  r1.x = dot(v6.xyz, cb3[4].xyz);
  r1.y = dot(v6.xyz, cb3[5].xyz);
  r1.z = dot(v6.xyz, cb3[6].xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  o5.xyz = r1.xyz * r0.www;
  r1.xyzw = cb3[1].xyzw * v0.yyyy;
  r1.xyzw = cb3[0].xyzw * v0.xxxx + r1.xyzw;
  r1.xyzw = cb3[2].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb3[3].xyzw + r1.xyzw;
  r0.w = cb4[10].z * r1.y;
  r0.w = cb4[9].z * r1.x + r0.w;
  r0.w = cb4[11].z * r1.z + r0.w;
  r0.w = cb4[12].z * r1.w + r0.w;
  o4.w = -r0.w;
  r1.xyw = cb3[3].xyz + -cb1[5].xyz;
  r2.x = cb3[0].x;
  r2.y = cb3[1].x;
  r2.z = cb3[2].x;
  r2.w = r1.x;
  r3.xyz = v0.xyz;
  r3.w = 1;
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
  r1.x = cb4[9].x;
  r1.y = cb4[10].x;
  r1.z = cb4[11].x;
  r1.x = dot(r1.xyz, r2.xyz);
  r3.x = cb4[9].y;
  r3.y = cb4[10].y;
  r3.z = cb4[11].y;
  r1.y = dot(r3.xyz, r2.xyz);
  r3.x = cb4[9].z;
  r3.y = cb4[10].z;
  r3.z = cb4[11].z;
  r1.z = dot(r3.xyz, r2.xyz);
  r3.x = cb4[9].w;
  r3.y = cb4[10].w;
  r3.z = cb4[11].w;
  r3.w = cb4[12].w;
  r0.w = dot(r3.xyzw, r2.xyzw);
  r3.xyz = cb3[1].xyz * v7.yyy;
  r3.xyz = cb3[0].xyz * v7.xxx + r3.xyz;
  r3.xyz = cb3[2].xyz * v7.zzz + r3.xyz;
  r3.yw = cb4[10].xy * r3.yy;
  r3.xy = cb4[9].xy * r3.xx + r3.yw;
  r3.xy = cb4[11].xy * r3.zz + r3.xy;
  r3.z = 0.00999999978;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xy = r3.xy * r1.ww;
  r1.w = 2.41400003 / cb2[7].y;
  r3.z = -r1.z * r1.w;
  r3.z = cmp(r3.z < cb0[87].y);
  r4.xy = r3.zz ? cb0[87].xy : cb0[87].yz;
  r4.zw = r3.zz ? cb0[88].xy : cb0[88].yz;
  r1.w = -r1.z * r1.w + -r4.x;
  r3.zw = r4.yw + -r4.xz;
  r3.z = max(0.00100000005, r3.z);
  r1.w = saturate(r1.w / r3.z);
  r1.w = r1.w * r3.w + r4.z;
  r3.z = cb0[111].w * cb0[86].x;
  r1.w = r3.z * r1.w;
  r1.w = v1.w * r1.w;
  r1.w = 0.414250195 * r1.w;
  r3.z = dot(r1.xyz, r1.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = r3.zzz * r1.xyz;
  r4.xyz = cb0[86].yyy * r4.xyz;
  r4.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r4.xyz;
  r3.z = cmp(cb0[86].z < 0.5);
  r3.w = -0.5 + v1.z;
  r3.z = r3.z ? r3.w : 1;
  r1.xyz = r4.xyz * r3.zzz + r1.xyz;
  r1.xy = r3.xy * r1.ww + r1.xy;
  r3.xyzw = cb4[6].xyzw * r1.yyyy;
  r3.xyzw = cb4[5].xyzw * r1.xxxx + r3.xyzw;
  r1.xyzw = cb4[7].xyzw * r1.zzzz + r3.xyzw;
  r1.xyzw = cb4[8].xywz * r0.wwww + r1.xywz;
  r0.w = cmp(0 != cb0[98].y);
  r3.x = cmp(cb0[98].z < 0.949999988);
  r3.x = r0.w ? r3.x : 0;
  r3.y = cb1[6].x * cb0[113].w;
  r4.x = cb0[113].z * r1.z;
  r4.y = r3.y * r1.z;
  r3.yz = r4.xy * float2(2,2) + r1.xy;
  r1.xy = r3.xx ? r3.yz : r1.xy;
  if (r0.w != 0) {
    r3.xz = float2(0.5,0.5);
    r3.y = cb1[6].x;
    r3.xyz = r3.xyz * r1.xyz;
    r3.w = 0.5 * r3.y;
    o3.xy = r3.xw + r3.zz;
    o3.z = cb0[98].z;
    o3.w = r1.z;
  } else {
    r3.xyzw = cb4[22].xyzw * r2.yyyy;
    r3.xyzw = cb4[21].xyzw * r2.xxxx + r3.xyzw;
    r3.xyzw = cb4[23].xyzw * r2.zzzz + r3.xyzw;
    r2.xyzw = cb4[24].xyzw * r2.wwww + r3.xyzw;
    r3.xz = float2(0.5,0.5);
    r3.y = cb1[6].x;
    r3.xyz = r3.xyz * r2.xyw;
    r3.w = 0.5 * r3.y;
    o3.xy = r3.xw + r3.zz;
    o3.zw = r2.zw;
  }
  o0.xyzw = r1.xywz;
  o1.xyz = cb0[83].xyz;
  o1.w = 1;
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

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Wed Aug 28 10:24:44 2024
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz
// COLOR                    0   xyzw        1     NONE   float     zw
// TEXCOORD                 0   xyzw        2     NONE   float   xy
// TEXCOORD                 1   xyzw        3     NONE   float   xy
// TEXCOORD                 2   xyzw        4     NONE   float   xy
// TEXCOORD                 3   xyzw        5     NONE   float   xy
// NORMAL                   0   xyz         6     NONE   float   xyz
// TANGENT                  0   xyzw        7     NONE   float   xyz
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xyz         2     NONE   float   xyz
// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
// TEXCOORD                 3   xyzw        4     NONE   float   xyzw
// TEXCOORD                 4   xyzw        5     NONE   float   xyzw
// TEXCOORD                 5   xyzw        6     NONE   float   xyzw
// TEXCOORD                 6   xyzw        7     NONE   float   xyzw
// TEXCOORD                 7   xyzw        8     NONE   float   xyzw
// TEXCOORD                 8   xyzw        9     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[114], immediateIndexed
dcl_constantbuffer CB1[7], immediateIndexed
dcl_constantbuffer CB2[8], immediateIndexed
dcl_constantbuffer CB3[7], immediateIndexed
dcl_constantbuffer CB4[25], immediateIndexed
dcl_input v0.xyz
dcl_input v1.zw
dcl_input v2.xy
dcl_input v3.xy
dcl_input v4.xy
dcl_input v5.xy
dcl_input v6.xyz
dcl_input v7.xyz
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xyzw
dcl_output o7.xyzw
dcl_output o8.xyzw
dcl_output o9.xyzw
dcl_temps 5
mul r0.xyz, v0.yyyy, cb3[1].xyzx
mad r0.xyz, cb3[0].xyzx, v0.xxxx, r0.xyzx
mad r0.xyz, cb3[2].xyzx, v0.zzzz, r0.xyzx
add r0.xyz, r0.xyzx, cb3[3].xyzx
add r1.xyz, -r0.xyzx, cb1[5].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul o4.xyz, r0.wwww, r1.xyzx
dp3 r1.x, v6.xyzx, cb3[4].xyzx
dp3 r1.y, v6.xyzx, cb3[5].xyzx
dp3 r1.z, v6.xyzx, cb3[6].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul o5.xyz, r0.wwww, r1.xyzx
mul r1.xyzw, v0.yyyy, cb3[1].xyzw
mad r1.xyzw, cb3[0].xyzw, v0.xxxx, r1.xyzw
mad r1.xyzw, cb3[2].xyzw, v0.zzzz, r1.xyzw
add r1.xyzw, r1.xyzw, cb3[3].xyzw
mul r0.w, r1.y, cb4[10].z
mad r0.w, cb4[9].z, r1.x, r0.w
mad r0.w, cb4[11].z, r1.z, r0.w
mad r0.w, cb4[12].z, r1.w, r0.w
mov o4.w, -r0.w
add r1.xyw, -cb1[5].xyxz, cb3[3].xyxz
mov r2.x, cb3[0].x
mov r2.y, cb3[1].x
mov r2.z, cb3[2].x
mov r2.w, r1.x
mov r3.xyz, v0.xyzx
mov r3.w, l(1.000000)
dp4 r2.x, r2.xyzw, r3.xyzw
mov r4.x, cb3[0].y
mov r4.y, cb3[1].y
mov r4.z, cb3[2].y
mov r4.w, r1.y
dp4 r2.y, r4.xyzw, r3.xyzw
mov r1.x, cb3[0].z
mov r1.y, cb3[1].z
mov r1.z, cb3[2].z
dp4 r2.z, r1.xyzw, r3.xyzw
mov r1.x, cb3[0].w
mov r1.y, cb3[1].w
mov r1.z, cb3[2].w
mov r1.w, cb3[3].w
dp4 r2.w, r1.xyzw, r3.xyzw
mov r1.x, cb4[9].x
mov r1.y, cb4[10].x
mov r1.z, cb4[11].x
dp3 r1.x, r1.xyzx, r2.xyzx
mov r3.x, cb4[9].y
mov r3.y, cb4[10].y
mov r3.z, cb4[11].y
dp3 r1.y, r3.xyzx, r2.xyzx
mov r3.x, cb4[9].z
mov r3.y, cb4[10].z
mov r3.z, cb4[11].z
dp3 r1.z, r3.xyzx, r2.xyzx
mov r3.x, cb4[9].w
mov r3.y, cb4[10].w
mov r3.z, cb4[11].w
mov r3.w, cb4[12].w
dp4 r0.w, r3.xyzw, r2.xyzw
mul r3.xyz, v7.yyyy, cb3[1].xyzx
mad r3.xyz, cb3[0].xyzx, v7.xxxx, r3.xyzx
mad r3.xyz, cb3[2].xyzx, v7.zzzz, r3.xyzx
mul r3.yw, r3.yyyy, cb4[10].xxxy
mad r3.xy, cb4[9].xyxx, r3.xxxx, r3.ywyy
mad r3.xy, cb4[11].xyxx, r3.zzzz, r3.xyxx
mov r3.z, l(0.010000)
dp3 r1.w, r3.xyzx, r3.xyzx
rsq r1.w, r1.w
mul r3.xy, r1.wwww, r3.xyxx
div r1.w, l(2.414000), cb2[7].y
mul r3.z, r1.w, -r1.z
lt r3.z, r3.z, cb0[87].y
movc r4.xy, r3.zzzz, cb0[87].xyxx, cb0[87].yzyy
movc r4.zw, r3.zzzz, cb0[88].xxxy, cb0[88].yyyz
mad r1.w, -r1.z, r1.w, -r4.x
add r3.zw, -r4.xxxz, r4.yyyw
max r3.z, r3.z, l(0.001000)
div_sat r1.w, r1.w, r3.z
mad r1.w, r1.w, r3.w, r4.z
mul r3.z, cb0[86].x, cb0[111].w
mul r1.w, r1.w, r3.z
mul r1.w, r1.w, v1.w
mul r1.w, r1.w, l(0.414250195)
dp3 r3.z, r1.xyzx, r1.xyzx
rsq r3.z, r3.z
mul r4.xyz, r1.xyzx, r3.zzzz
mul r4.xyz, r4.xyzx, cb0[86].yyyy
mul r4.xyz, r4.xyzx, l(0.010000, 0.010000, 0.010000, 0.000000)
lt r3.z, cb0[86].z, l(0.500000)
add r3.w, v1.z, l(-0.500000)
movc r3.z, r3.z, r3.w, l(1.000000)
mad r1.xyz, r4.xyzx, r3.zzzz, r1.xyzx
mad r1.xy, r3.xyxx, r1.wwww, r1.xyxx
mul r3.xyzw, r1.yyyy, cb4[6].xyzw
mad r3.xyzw, cb4[5].xyzw, r1.xxxx, r3.xyzw
mad r1.xyzw, cb4[7].xyzw, r1.zzzz, r3.xyzw
mad r1.xyzw, cb4[8].xywz, r0.wwww, r1.xywz
ne r0.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[98].y
lt r3.x, cb0[98].z, l(0.950000)
and r3.x, r0.w, r3.x
mul r3.y, cb0[113].w, cb1[6].x
mul r4.x, r1.z, cb0[113].z
mul r4.y, r1.z, r3.y
mad r3.yz, r4.xxyx, l(0.000000, 2.000000, 2.000000, 0.000000), r1.xxyx
movc r1.xy, r3.xxxx, r3.yzyy, r1.xyxx
if_nz r0.w
  mov r3.xz, l(0.500000,0,0.500000,0)
  mov r3.y, cb1[6].x
  mul r3.xyz, r1.xyzx, r3.xyzx
  mul r3.w, r3.y, l(0.500000)
  add o3.xy, r3.zzzz, r3.xwxx
  mov o3.z, cb0[98].z
  mov o3.w, r1.z
else
  mul r3.xyzw, r2.yyyy, cb4[22].xyzw
  mad r3.xyzw, cb4[21].xyzw, r2.xxxx, r3.xyzw
  mad r3.xyzw, cb4[23].xyzw, r2.zzzz, r3.xyzw
  mad r2.xyzw, cb4[24].xyzw, r2.wwww, r3.xyzw
  mov r3.xz, l(0.500000,0,0.500000,0)
  mov r3.y, cb1[6].x
  mul r3.xyz, r2.xywx, r3.xyzx
  mul r3.w, r3.y, l(0.500000)
  add o3.xy, r3.zzzz, r3.xwxx
  mov o3.zw, r2.zzzw
endif
mov o0.xyzw, r1.xywz
mov o1.xyz, cb0[83].xyzx
mov o1.w, l(1.000000)
mov o5.w, l(1.000000)
mov o6.xy, v2.xyxx
mov o6.zw, l(0,0,0,0)
mov o7.xy, v3.xyxx
mov o7.zw, l(0,0,0,0)
mov o8.xy, v4.xyxx
mov o8.zw, v5.xxxy
mov o9.xyz, r0.xyzx
mov o9.w, l(0)
mov o2.xyz, l(0,0,0,0)
ret
// Approximately 0 instruction slots used

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
