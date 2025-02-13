//  outline offset 4.6 LeoTorreZ   ---- Created with 3Dmigoto v1.3.16 on Tue Apr 23 23:44:55 2024
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
  float4 cb0[57];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);
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
  v1.zw = float2(0.0,0.0);
  r5.xyzw = float4(0.0,0.0,0.0,0.0);
  o0 = r5;
  o1 = r5;
  o2 = r5;
  o3 = r5;
  o4 = r5;

  r0.x = cmp(cb0[24].x == 0.000000);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o4.xyzw = float4(0,0,0,0);
    o3.xyz = float3(0,0,0);
    o2.xy = float2(0,0);
  }
  if (r0.x == 0) {
    r0.xy = cmp(float2(0,0) != cb0[36].yz);
    r0.z = cmp(abs(cb0[37].w) < 0.00100000005);
    r1.xyz = cb0[37].xyz * cb0[37].www;
    r1.xyz = r0.zzz ? float3(0,0,0) : r1.xyz;
    r2.xyzw = cb3[5].xyzw * r1.yyyy;
    r2.xyzw = cb3[4].xyzw * r1.xxxx + r2.xyzw;
    r1.xyzw = cb3[6].xyzw * r1.zzzz + r2.xyzw;
    r1.xyzw = cb3[7].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r2.xyz = cb3[5].xyz * cb0[37].yyy;
    r2.xyz = cb3[4].xyz * cb0[37].xxx + r2.xyz;
    r2.xyz = cb3[6].xyz * cb0[37].zzz + r2.xyz;
    r0.z = dot(r1.xyz, r2.xyz);
    r0.w = dot(v0.xyz, r2.xyz);
    r1.x = cmp(r0.w < r0.z);
    r0.z = r0.w + -r0.z;
    r2.xyz = -r0.zzz * r2.xyz + v0.xyz;
    r2.w = 0;
    r3.xyz = v0.xyz;
    r3.w = 1;
    r1.xyzw = r1.xxxx ? r2.xyzw : r3.xyzw;
    r0.z = dot(v0.xyz, cb0[37].xyz);
    r0.w = -0.00999999978 + cb0[37].w;
    r0.w = cmp(r0.z < r0.w);
    r0.z = -cb0[37].w + r0.z;
    r2.xyz = -r0.zzz * cb0[37].xyz + v0.xyz;
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
    r2.y = r2.y + OFFSET;
    r0.x = cb4[9].x;
    r0.y = cb4[10].x;
    r0.z = cb4[11].x;
    r0.x = dot(r0.xyz, r2.xyz);
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
    r1.y = cmp(cb0[24].x == 1.000000);
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
    r2.x = cmp(r2.x < cb0[30].y);
    r3.xy = r2.xx ? cb0[30].xy : cb0[30].yz;
    r3.zw = r2.xx ? cb0[31].xy : cb0[31].yz;
    r1.w = -r0.z * r1.w + -r3.x;
    r2.xy = r3.yw + -r3.xz;
    r2.x = max(0.00100000005, r2.x);
    r1.w = saturate(r1.w / r2.x);
    r1.w = r1.w * r2.y + r3.z;
    r2.x = cb0[54].w * cb0[26].x;
    r1.w = r2.x * r1.w;
    r1.w = 100 * r1.w;
    r1.w = cb0[28].z * r1.w;
    r1.w = 0.414250195 * r1.w;
    r1.w = v1.w * r1.w;
    r2.x = dot(r0.xyz, r0.xyz);
    r2.x = rsqrt(r2.x);
    r2.xyz = r2.xxx * r0.xyz;
    r2.xyz = cb0[28].xxx * r2.xyz;
    r2.xyz = cb0[28].zzz * r2.xyz;
    r2.w = -0.5 + v1.z;
    r0.xyz = r2.xyz * r2.www + r0.xyz;
    r0.xy = r1.yz * r1.ww + r0.xy;
    r2.xyzw = cb4[6].xyzw * r0.yyyy;
    r2.xyzw = cb4[5].xyzw * r0.xxxx + r2.xyzw;
    r2.xyzw = cb4[7].xyzw * r0.zzzz + r2.xyzw;
    r1.xyzw = cb4[8].xyzw * r1.xxxx + r2.xyzw;
    r0.x = cmp(0 != cb0[41].y);
    r0.y = cmp(cb0[41].z < 0.949999988);
    r0.y = r0.y ? r0.x : 0;
    r0.z = cb1[6].x * cb0[56].w;
    r2.x = cb0[56].z * r1.w;
    r2.y = r0.z * r1.w;
    r2.xy = r2.xy * float2(2,2) + r1.xy;
    r1.xy = r0.yy ? r2.xy : r1.xy;
    r2.xz = float2(0.5,0.5);
    r2.y = cb1[6].x;
    r2.xyz = r2.xyz * r1.xyw;
    r2.w = 0.5 * r2.y;
    r2.xy = r2.xw + r2.zz;
    r2.z = cb0[41].z;
    r2.w = r1.w;
    o4.xyzw = r0.xxxx ? r2.xyzw : 0;
    o2.xy = v4.xy * cb0[40].xy + cb0[40].zw;
    o0.xyzw = r1.xyzw;
    o1.xyz = cb0[27].xyz;
    o1.w = r0.w;
    o3.xyz = float3(0,0,0);
  }
  return;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Tue Apr 23 23:44:55 2024
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// COLOR                    0   xyzw        1     NONE   float     zw
// NORMAL                   0   xyz         2     NONE   float   xyz
// TANGENT                  0   xyzw        3     NONE   float   xyz
// TEXCOORD                 0   xy          4     NONE   float   xy
// TEXCOORD                 1   xy          5     NONE   float
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xy          2     NONE   float   xy
// TEXCOORD                 1   xyz         3     NONE   float   xyz
// TEXCOORD                 2   xyzw        4     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[57], immediateIndexed
dcl_constantbuffer CB1[7], immediateIndexed
dcl_constantbuffer CB2[8], immediateIndexed
dcl_constantbuffer CB3[8], immediateIndexed
dcl_constantbuffer CB4[13], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.zw
dcl_input v2.xyz
dcl_input v3.xyz
dcl_input v4.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xy
dcl_output o3.xyz
dcl_output o4.xyzw
dcl_temps 5
eq r0.x, cb0[24].x, l(0.000000)
if_nz r0.x
  mov o0.xyzw, l(0,0,0,0)
  mov o1.xyzw, l(0,0,0,0)
  mov o4.xyzw, l(0,0,0,0)
  mov o3.xyz, l(0,0,0,0)
  mov o2.xy, l(0,0,0,0)
endif
if_z r0.x
  ne r0.xy, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[36].yzyy
  lt r0.z, |cb0[37].w|, l(0.001000)
  mul r1.xyz, cb0[37].wwww, cb0[37].xyzx
  movc r1.xyz, r0.zzzz, l(0,0,0,0), r1.xyzx
  mul r2.xyzw, r1.yyyy, cb3[5].xyzw
  mad r2.xyzw, cb3[4].xyzw, r1.xxxx, r2.xyzw
  mad r1.xyzw, cb3[6].xyzw, r1.zzzz, r2.xyzw
  add r1.xyzw, r1.xyzw, cb3[7].xyzw
  div r1.xyz, r1.xyzx, r1.wwww
  mul r2.xyz, cb0[37].yyyy, cb3[5].xyzx
  mad r2.xyz, cb3[4].xyzx, cb0[37].xxxx, r2.xyzx
  mad r2.xyz, cb3[6].xyzx, cb0[37].zzzz, r2.xyzx
  dp3 r0.z, r1.xyzx, r2.xyzx
  dp3 r0.w, v0.xyzx, r2.xyzx
  lt r1.x, r0.w, r0.z
  add r0.z, -r0.z, r0.w
  mad r2.xyz, -r0.zzzz, r2.xyzx, v0.xyzx
  mov r2.w, l(0)
  mov r3.xyz, v0.xyzx
  mov r3.w, l(1.000000)
  movc r1.xyzw, r1.xxxx, r2.xyzw, r3.xyzw
  dp3 r0.z, v0.xyzx, cb0[37].xyzx
  add r0.w, cb0[37].w, l(-0.010000)
  lt r0.w, r0.z, r0.w
  add r0.z, r0.z, -cb0[37].w
  mad r2.xyz, -r0.zzzz, cb0[37].xyzx, v0.xyzx
  mov r2.w, l(0)
  movc r2.xyzw, r0.wwww, r2.xyzw, r3.xyzw
  movc r1.xyzw, r0.yyyy, r1.xyzw, r2.xyzw
  movc r0.xyzw, r0.xxxx, r1.xyzw, r3.xyzw
  add r1.xyw, -cb1[5].xyxz, cb3[3].xyxz
  mov r2.x, cb3[0].x
  mov r2.y, cb3[1].x
  mov r2.z, cb3[2].x
  mov r2.w, r1.x
  mov r3.xyz, r0.xyzx
  mov r3.w, v0.w
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
  mov r0.x, cb4[9].x
  mov r0.y, cb4[10].x
  mov r0.z, cb4[11].x
  dp3 r0.x, r0.xyzx, r2.xyzx
  mov r1.x, cb4[9].y
  mov r1.y, cb4[10].y
  mov r1.z, cb4[11].y
  dp3 r0.y, r1.xyzx, r2.xyzx
  mov r1.x, cb4[9].z
  mov r1.y, cb4[10].z
  mov r1.z, cb4[11].z
  dp3 r0.z, r1.xyzx, r2.xyzx
  mov r1.x, cb4[9].w
  mov r1.y, cb4[10].w
  mov r1.z, cb4[11].w
  mov r1.w, cb4[12].w
  dp4 r1.x, r1.xyzw, r2.xyzw
  eq r1.y, cb0[24].x, l(1.000000)
  movc r1.yzw, r1.yyyy, v2.xxyz, v3.xxyz
  mul r2.xyz, r1.zzzz, cb3[1].xyzx
  mad r2.xyz, cb3[0].xyzx, r1.yyyy, r2.xyzx
  mad r1.yzw, cb3[2].xxyz, r1.wwww, r2.xxyz
  mul r2.xy, r1.zzzz, cb4[10].xyxx
  mad r1.yz, cb4[9].xxyx, r1.yyyy, r2.xxyx
  mad r2.xy, cb4[11].xyxx, r1.wwww, r1.yzyy
  mov r2.z, l(0.010000)
  dp3 r1.y, r2.xyzx, r2.xyzx
  rsq r1.y, r1.y
  mul r1.yz, r1.yyyy, r2.xxyx
  div r1.w, l(2.414000), cb2[7].y
  mul r2.x, -r0.z, r1.w
  lt r2.x, r2.x, cb0[30].y
  movc r3.xy, r2.xxxx, cb0[30].xyxx, cb0[30].yzyy
  movc r3.zw, r2.xxxx, cb0[31].xxxy, cb0[31].yyyz
  mad r1.w, -r0.z, r1.w, -r3.x
  add r2.xy, -r3.xzxx, r3.ywyy
  max r2.x, r2.x, l(0.001000)
  div_sat r1.w, r1.w, r2.x
  mad r1.w, r1.w, r2.y, r3.z
  mul r2.x, cb0[26].x, cb0[54].w
  mul r1.w, r1.w, r2.x
  mul r1.w, r1.w, l(100.000000)
  mul r1.w, r1.w, cb0[28].z
  mul r1.w, r1.w, l(0.414250195)
  mul r1.w, r1.w, v1.w
  dp3 r2.x, r0.xyzx, r0.xyzx
  rsq r2.x, r2.x
  mul r2.xyz, r0.xyzx, r2.xxxx
  mul r2.xyz, r2.xyzx, cb0[28].xxxx
  mul r2.xyz, r2.xyzx, cb0[28].zzzz
  add r2.w, v1.z, l(-0.500000)
  mad r0.xyz, r2.xyzx, r2.wwww, r0.xyzx
  mad r0.xy, r1.yzyy, r1.wwww, r0.xyxx
  mul r2.xyzw, r0.yyyy, cb4[6].xyzw
  mad r2.xyzw, cb4[5].xyzw, r0.xxxx, r2.xyzw
  mad r2.xyzw, cb4[7].xyzw, r0.zzzz, r2.xyzw
  mad r1.xyzw, cb4[8].xyzw, r1.xxxx, r2.xyzw
  ne r0.x, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[41].y
  lt r0.y, cb0[41].z, l(0.950000)
  and r0.y, r0.y, r0.x
  mul r0.z, cb0[56].w, cb1[6].x
  mul r2.x, r1.w, cb0[56].z
  mul r2.y, r1.w, r0.z
  mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), r1.xyxx
  movc r1.xy, r0.yyyy, r2.xyxx, r1.xyxx
  mov r2.xz, l(0.500000,0,0.500000,0)
  mov r2.y, cb1[6].x
  mul r2.xyz, r1.xywx, r2.xyzx
  mul r2.w, r2.y, l(0.500000)
  add r2.xy, r2.zzzz, r2.xwxx
  mov r2.z, cb0[41].z
  mov r2.w, r1.w
  and o4.xyzw, r0.xxxx, r2.xyzw
  mad o2.xy, v4.xyxx, cb0[40].xyxx, cb0[40].zwzz
  mov o0.xyzw, r1.xyzw
  mov o1.xyz, cb0[27].xyzx
  mov o1.w, r0.w
  mov o3.xyz, l(0,0,0,0)
endif
ret
// Approximately 0 instruction slots used

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/