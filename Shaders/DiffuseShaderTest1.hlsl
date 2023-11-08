// ---- Created with 3Dmigoto v1.3.16 on Thu Oct 12 02:18:13 2023
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

#define res IniParams[0].xy
#define time IniParams[0].w
#define modesty IniParams[69].x


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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,
  ren1,ren2,ren3,ren4,
  mask,diffuse,lightmap,normalmap;
  uint4 bitmask, uiDest;
  float4 fDest;
  mask.xyzw = t69.Sample(s12_s, v2.xy).xyzw;
  if(mask.w == 0.0) discard;
  if(mask.w == 1.0) discard;
  //mask.w = 1 - mask.w;
  ren1.xyzw = t71.Sample(s15_s, float2(v0.x/res.x, v0.y/res.y)).xyzw;
  // ren2.xyzw = t72.Sample(s15_s, float2(v0.x/res.x, v0.y/res.y)).xyzw;
  // ren3.xyzw = t73.Sample(s15_s, float2(v0.x/res.x, v0.y/res.y)).xyzw;
  // ren4.xyzw = t74.Sample(s15_s, float2(v0.x/res.x, v0.y/res.y)).xyzw;
  // normalmap.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  diffuse.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  // lightmap.xyzw = t2.Sample(s2_s, v2.xy).xyzw;
  
  r0.xy = cmp(float2(0,0) != cb0[64].wx);
  r0.z = -0.00999999978 + v1.w;
  r0.z = cmp(r0.z < 0);
  r0.x = r0.x ? r0.z : 0;
  if (r0.x != 0) discard;
  if (r0.y != 0) {
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
      if (modesty.x != 0){
        if (r0.x != 0) discard;
      } 
    }
  }


  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = rsqrt(r0.x);
  r0.yzw = v5.xyz * r0.xxx;
  r1.xy = cmp(float2(0,0.5) < cb0[83].ww);
  r1.z = cmp(0 != v6.y);
  r2.xyz = r1.zzz ? cb0[84].xyz : cb0[83].xyz;
  r1.xzw = r1.xxx ? r2.xyz : cb0[79].xyz;
  r1.xzw = v5.xyz * r0.xxx + r1.xzw;
  r0.x = dot(r1.xzw, r1.xzw);
  r0.x = rsqrt(r0.x);
  r1.xzw = r1.xzw * r0.xxx;
  r0.x = -1 + cb0[64].z;
  r2.xyzw = t0.SampleBias(s0_s, v2.xy, r0.x).xyzw;
  r3.xyz = cmp(cb0[26].xxx == float3(3,1,2));
  r3.w = cb0[38].z * r2.w;
  r4.xyz = cb0[39].xyz + -r2.xyz;
  r4.xyz = r3.www * r4.xyz + r2.xyz;
  r2.xyz = r3.xxx ? r4.xyz : r2.xyz;
  r3.x = -cb0[26].y + r2.w;
  r3.x = cmp(r3.x < 0);
  r3.x = r3.y ? r3.x : 0;
  //if (r3.x != 0) discard;
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
  r6.xyz = r5.xxx ? cb0[48].yzw : cb0[23].xyz;
  r6.xyz = r5.yyy ? cb0[52].xyz : r6.xyz;
  r6.xyz = r5.zzz ? cb0[56].xyz : r6.xyz;
  r6.xyz = r5.www ? cb0[60].xyz : r6.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r3.w = cmp(0.00999999978 < r2.w);
  r3.z = r3.w ? r3.z : 0;
  r2.w = r3.z ? r2.w : 0;
  r3.w = -0.5 + r4.y;
  r3.x = r3.x ? r3.w : 0;
  r3.x = dot(r3.xx, abs(r3.xx));
  r3.x = 0.5 + r3.x;
  r3.w = v1.x * r3.x;
  r3.x = r3.y ? r3.w : r3.x;
  r3.y = cmp(r3.x < 0.0500000007);
  r3.w = cmp(0.949999988 < r3.x);
  r3.x = v3.w + r3.x;
  r3.x = 0.5 * r3.x;
  r3.x = r3.w ? 1 : r3.x;
  r3.x = r3.y ? 0 : r3.x;
  r3.y = cmp(r3.x < cb0[33].z);
  r3.x = cb0[33].z + -r3.x;
  r6.y = r3.x / cb0[33].z;
  r3.x = cmp(0 != cb0[36].y);
  r3.w = v1.y + v1.y;
  r3.w = max(0.00999999978, r3.w);
  r3.w = cb0[36].x * r3.w;
  r3.x = r3.x ? r3.w : cb0[36].x;
  r3.x = r6.y / r3.x;
  r3.x = min(1, r3.x);
  r6.z = 1 + -r3.x;
  r6.yz = r3.yy ? r6.yz : float2(0,1);
  r6.x = r3.y ? 1.000000 : 0;
  r3.x = cmp(9.99999975e-06 < v6.x);
  r7.xy = r3.xx ? float2(1,0) : r6.xz;
  r3.x = cmp(0.5 < cb0[79].w);
  r3.y = cb0[78].w + cb0[78].w;
  r3.y = min(1, r3.y);
  r3.x = r3.x ? r3.y : 1;
  r3.y = cmp(0.899999976 < r4.x);
  if (r3.y != 0) {
    r3.yw = cb2[15].xy * v3.yy;
    r3.yw = cb2[14].xy * v3.xx + r3.yw;
    r8.yz = cb2[16].xy * v3.zz + r3.yw;
    r8.x = cb0[67].y * r8.y;
    r3.yw = r8.xz * float2(0.5,0.5) + float2(0.5,0.5);
    r3.y = t2.Sample(s3_s, r3.yw).x;
    r3.y = saturate(cb0[67].x * r3.y);
    r6.xzw = -cb0[69].xyz + cb0[68].xyz;
    r6.xzw = r3.yyy * r6.xzw + cb0[69].xyz;
    r6.xzw = r6.xzw * r2.xyz;
    r3.y = dot(v3.xyz, r1.xzw);
    r3.y = max(0.00100000005, r3.y);
    r3.y = log2(r3.y);
    r3.y = cb0[70].w * r3.y;
    r3.y = exp2(r3.y);
    r8.x = saturate(cb0[71].w * r3.y);
    r3.y = cmp(cb0[72].z < r8.x);
    if (r3.y != 0) {
      r9.xyz = cb0[73].xyz;
    } else {
      r3.y = cmp(0 != cb0[72].y);
      if (r3.y != 0) {
        r8.y = 0.5;
        r8.yzw = t3.Sample(s4_s, r8.xy).xyz;
        r9.xyz = r8.yzw * r4.zzz;
      } else {
        r8.xyz = cb0[71].xyz * r8.xxx;
        r9.xyz = r8.xyz * r4.zzz;
      }
    }
    r3.y = cmp(0 != v6.x);
    r8.xyz = cb0[72].xxx * r9.xyz;
    r8.xyz = r3.yyy ? r8.xyz : r9.xyz;
    r3.y = cmp(0 != cb0[36].z);
    r9.xyz = float3(-1,-1,-1) + cb0[70].xyz;
    r9.xyz = r6.yyy * r9.xyz + float3(1,1,1);
    r9.xyz = r3.yyy ? r9.xyz : cb0[70].xyz;
    r10.xyz = r9.xyz * r6.xzw;
    r3.y = cmp(0 != r7.x);
    r11.xyz = cb0[75].xxx * r6.xzw;
    r11.xyz = r3.yyy ? r10.xyz : r11.xyz;
    r3.y = cmp(r3.x < 1);
    r6.xyz = -r6.xzw * r9.xyz + r11.xyz;
    r6.xyz = r3.xxx * r6.xyz + r10.xyz;
    r6.xyz = r3.yyy ? r6.xyz : r11.xyz;
    r8.xyz = cb0[75].xxx * r8.xyz;
  } else {
    r3.y = -1 + r0.x;
    r3.w = r3.y * 0.100000001 + 0.0500000007;
    r4.y = cmp(0 != cb0[34].w);
    if (r4.y != 0) {
      r4.w = r3.y * 0.100000001 + 0.550000012;
      r7.z = 1 + -r3.w;
      r7.w = 1 + -r4.w;
      r9.xyz = t4.Sample(s2_s, r7.yz).xyz;
      r11.xyz = t4.Sample(s2_s, r7.yw).xyz;
      r9.xyz = -r11.xyz + r9.xyz;
      r9.xyz = cb0[76].zzz * r9.xyz + r11.xyz;
      r11.xz = float2(0,0);
      r11.yw = r7.zw;
      r12.xyz = t4.Sample(s2_s, r11.xy).xyz;
      r11.xyz = t4.Sample(s2_s, r11.zw).xyz;
      r12.xyz = r12.xyz + -r11.xyz;
      r11.xyz = cb0[76].zzz * r12.xyz + r11.xyz;
    } else {
      r12.x = 1 + -r3.w;
      r12.y = r7.y;
      r9.xyz = t4.Sample(s2_s, r12.yx).xyz;
      r12.z = 0;
      r11.xyz = t4.Sample(s2_s, r12.zx).xyz;
    }
    r4.w = cmp(r3.x < 1);
    if (r4.w != 0) {
      if (r4.y != 0) {
        r3.y = r3.y * 0.100000001 + 0.550000012;
        r12.yw = float2(1,1) + -r3.wy;
        r12.xz = float2(0,0);
        r7.yzw = t4.Sample(s2_s, r12.xy).xyz;
        r12.xyz = t4.Sample(s2_s, r12.zw).xyz;
        r7.yzw = -r12.xyz + r7.yzw;
        r7.yzw = cb0[76].zzz * r7.yzw + r12.xyz;
      } else {
        r12.y = 1 + -r3.w;
        r12.x = 0;
        r7.yzw = t4.Sample(s2_s, r12.xy).xyz;
      }
    } else {
      r7.yzw = float3(0,0,0);
    }
    r10.xyz = r11.xyz * r2.xyz;
    r3.y = cmp(0 != r7.x);
    r9.xyz = r9.xyz * r2.xyz;
    r11.xyz = cb0[75].xxx * r2.xyz;
    r9.xyz = r3.yyy ? r9.xyz : r11.xyz;
    r11.xyz = r7.yzw * r2.xyz;
    r7.xyz = -r2.xyz * r7.yzw + r9.xyz;
    r7.xyz = r3.xxx * r7.xyz + r11.xyz;
    r6.xyz = r4.www ? r7.xyz : r9.xyz;
    r3.y = cmp(r0.x == 1.000000);
    r3.w = r5.z ? cb0[58].w : cb0[62].w;
    r4.y = r5.z ? cb0[59].x : cb0[63].x;
    r3.w = r5.y ? cb0[54].w : r3.w;
    r4.y = r5.y ? cb0[55].x : r4.y;
    r7.x = r5.x ? cb0[50].w : r3.w;
    r7.y = r5.x ? cb0[51].x : r4.y;
    r3.yw = r3.yy ? cb0[38].xy : r7.xy;
    r1.x = dot(v3.xyz, r1.xzw);
    r1.x = max(0.00100000005, r1.x);
    r1.x = log2(r1.x);
    r1.x = r3.y * r1.x;
    r1.x = exp2(r1.x);
    r1.z = 1 + -r4.z;
    r1.x = cmp(r1.z < r1.x);
    r4.yzw = cb0[37].yzw * r3.www;
    r4.xyz = r4.yzw * r4.xxx;
    r4.xyz = r1.xxx ? r4.xyz : 0;
    r4.xyz = cb0[75].xxx * r4.xyz;
    r8.xyz = r1.xxx ? r4.xyz : 0;
  }
  r1.xzw = cb0[43].xyz * r2.xyz;
  r1.xzw = cb0[42].zzz * r1.xzw;
  r0.x = cmp(r0.x == 1.000000);
  r2.xyz = cb0[42].www * r1.xzw;
  r4.xyz = cb0[49].xxx * r1.xzw;
  r7.xyz = cb0[52].www * r1.xzw;
  r9.xyz = cb0[56].www * r1.xzw;
  r11.xyz = cb0[60].www * r1.xzw;
  r1.xzw = r5.www ? r11.xyz : r1.xzw;
  r1.xzw = r5.zzz ? r9.xyz : r1.xzw;
  r1.xzw = r5.yyy ? r7.xyz : r1.xzw;
  r1.xzw = r5.xxx ? r4.xyz : r1.xzw;
  r1.xzw = r0.xxx ? r2.xyz : r1.xzw;
  r0.x = cmp(r3.x < 1);
  r2.xyz = r8.xyz * r3.xxx;
  r2.xyz = r0.xxx ? r2.xyz : r8.xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r1.xzw = -r2.xyz + r1.xzw;
  r1.xzw = r2.www * r1.xzw + r2.xyz;
  r1.xzw = r3.zzz ? r1.xzw : r2.xyz;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = v3.xyz * r0.xxx;
  r0.x = saturate(dot(r0.yzw, r2.xyz));
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-05, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[89].x * r0.x;
  r0.x = exp2(r0.x);
  r0.yzw = max(cb0[88].xyz, cb0[87].xyz);
  r0.xyz = r0.yzw * r0.xxx;
  r3.xyz = r0.xyz * cb0[89].yyy + r1.xzw;
  r0.w = 1 + -r2.w;
  r0.w = cb0[89].z * r0.w + r2.w;
  r0.xyz = r0.xyz * cb0[89].yyy + r10.xyz;
  r1.x = max(r3.y, r3.z);
  r2.w = max(r3.x, r1.x);
  r1.x = cmp(1 < r2.w);
  r2.xyz = r3.xyz / r2.www;
  r3.w = 1;
  r2.xyzw = r1.xxxx ? r2.xyzw : r3.xyzw;
  r1.xzw = -r2.xyz + r0.xyz;
  r1.xzw = cb0[85].xxx * r1.xzw + r2.xyz;
  r0.xyz = r1.yyy ? r1.xzw : r0.xyz;
  r1.x = saturate(0.0500000007 * r2.w);
  o1.w = sqrt(r1.x);
  o0.xyz = v3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = cmp(0 != cb0[22].x);
  r1.y = 0.00392156886 * cb0[22].y;
  o2.z = r1.x ? r1.y : r0.z;
  o0.w = r5.x ? 0.333000 : 0;
  o1.xyz = r2.xyz;
  o2.xyw = r0.xyw;
  o3.x = 0.0156862754;
  o4.x = r0.w;
  o5.x = 0; 
  mask.w = saturate(sqrt(mask.w));
  //^ Move this stuff to an appropriate place above I hope
  ren1.x  ? ren1.x : 1.0;
  //ren1.xyz = ren1.xyz * 0.95+0.05;
  o2.xyz = float3(
    lerp(diffuse.x, ren1.x, mask.w),
    lerp(diffuse.y, ren1.y, mask.w),
    lerp(diffuse.z, ren1.z, mask.w)
  );
  
  //o1.xyzw = float4(0.1,0.2,0.5,1.0);
  //o2.xyzw = float4(0.5,1.0,1.0,0.5);
  //o3.x = 0.0;
  //o4.x = 0.1;
  return;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Oct 12 02:18:13 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float
// COLOR                    0   xyzw        1     NONE   float   xy w
// TEXCOORD                 0   xyzw        2     NONE   float   xy
// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
// TEXCOORD                 2   xyzw        4     NONE   float   xy w
// TEXCOORD                 3   xyz         5     NONE   float   xyz
// TEXCOORD                 4   xy          6     NONE   float   xy
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
// SV_Target                2   xyzw        2   TARGET   float   xyzw
// SV_Target                3   x           3   TARGET   float   x
// SV_Target                4   x           4   TARGET   float   x
// SV_Target                5   x           5   TARGET   float   x
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} }
dcl_constantbuffer CB0[90], immediateIndexed
dcl_constantbuffer CB1[8], immediateIndexed
dcl_constantbuffer CB2[17], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xyw
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyw
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o4.x
dcl_output o5.x
dcl_temps 13
ne r0.xy, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[64].wxww
add r0.z, v1.w, l(-0.010000)
lt r0.z, r0.z, l(0.000000)
and r0.x, r0.x, r0.z
discard_nz r0.x
if_nz r0.y
  lt r0.x, cb0[64].y, l(0.950000)
  if_nz r0.x
    div r0.xy, v4.yxyy, v4.wwww
    mul r0.xy, r0.xyxx, cb1[7].yxyy
    mul r0.xy, r0.xyxx, l(0.250000, 0.250000, 0.000000, 0.000000)
    ge r0.zw, r0.xxxy, -r0.xxxy
    frc r0.xy, |r0.xyxx|
    movc r0.xy, r0.zwzz, r0.xyxx, -r0.xyxx
    mul r0.xy, r0.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)
    ftou r0.xy, r0.xyxx
    dp4 r1.x, cb0[8].xyzw, icb[r0.y + 0].xyzw
    dp4 r1.y, cb0[9].xyzw, icb[r0.y + 0].xyzw
    dp4 r1.z, cb0[10].xyzw, icb[r0.y + 0].xyzw
    dp4 r1.w, cb0[11].xyzw, icb[r0.y + 0].xyzw
    dp4 r0.x, r1.xyzw, icb[r0.x + 0].xyzw
    mad r0.x, cb0[64].y, l(17.000000), -r0.x
    add r0.x, r0.x, l(-0.010000)
    lt r0.x, r0.x, l(0.000000)
    discard_nz r0.x
  endif
endif
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r0.yzw, r0.xxxx, v5.xxyz
lt r1.xy, l(0.000000, 0.500000, 0.000000, 0.000000), cb0[83].wwww
ne r1.z, l(0.000000, 0.000000, 0.000000, 0.000000), v6.y
movc r2.xyz, r1.zzzz, cb0[84].xyzx, cb0[83].xyzx
movc r1.xzw, r1.xxxx, r2.xxyz, cb0[79].xxyz
mad r1.xzw, v5.xxyz, r0.xxxx, r1.xxzw
dp3 r0.x, r1.xzwx, r1.xzwx
rsq r0.x, r0.x
mul r1.xzw, r0.xxxx, r1.xxzw
add r0.x, cb0[64].z, l(-1.000000)
sample_b_indexable(texture2d)(float,float,float,float) r2.xyzw, v2.xyxx, t0.xyzw, s0, r0.x
eq r3.xyz, cb0[26].xxxx, l(3.000000, 1.000000, 2.000000, 0.000000)
mul r3.w, r2.w, cb0[38].z
add r4.xyz, -r2.xyzx, cb0[39].xyzx
mad r4.xyz, r3.wwww, r4.xyzx, r2.xyzx
movc r2.xyz, r3.xxxx, r4.xyzx, r2.xyzx
add r3.x, r2.w, -cb0[26].y
lt r3.x, r3.x, l(0.000000)
and r3.x, r3.y, r3.x
discard_nz r3.x
sample_b_indexable(texture2d)(float,float,float,float) r4.xyzw, v2.xyxx, t1.xyzw, s1, r0.x
ne r3.xy, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[33].xyxx
ne r0.x, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[48].x
ge r5.xyzw, r4.wwww, l(0.800000, 0.400000, 0.200000, 0.600000)
and r0.x, r0.x, r5.x
movc r0.x, r0.x, l(2.000000), l(1.000000)
ne r3.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[51].w
and r3.w, r5.y, r3.w
lt r6.xyz, r4.wwww, l(0.600000, 0.400000, 0.800000, 0.000000)
and r3.w, r3.w, r6.x
movc r0.x, r3.w, l(3.000000), r0.x
ne r3.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[55].w
and r3.w, r5.z, r3.w
and r3.w, r6.y, r3.w
movc r0.x, r3.w, l(4.000000), r0.x
ne r3.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[59].w
and r3.w, r5.w, r3.w
and r3.w, r6.z, r3.w
movc r0.x, r3.w, l(5.000000), r0.x
eq r5.xyzw, r0.xxxx, l(2.000000, 3.000000, 4.000000, 5.000000)
movc r6.xyz, r5.xxxx, cb0[48].yzwy, cb0[23].xyzx
movc r6.xyz, r5.yyyy, cb0[52].xyzx, r6.xyzx
movc r6.xyz, r5.zzzz, cb0[56].xyzx, r6.xyzx
movc r6.xyz, r5.wwww, cb0[60].xyzx, r6.xyzx
mul r2.xyz, r2.xyzx, r6.xyzx
lt r3.w, l(0.010000), r2.w
and r3.z, r3.w, r3.z
and r2.w, r2.w, r3.z
add r3.w, r4.y, l(-0.500000)
and r3.x, r3.w, r3.x
dp2 r3.x, r3.xxxx, |r3.xxxx|
add r3.x, r3.x, l(0.500000)
mul r3.w, r3.x, v1.x
movc r3.x, r3.y, r3.w, r3.x
lt r3.y, r3.x, l(0.050000)
lt r3.w, l(0.950000), r3.x
add r3.x, r3.x, v3.w
mul r3.x, r3.x, l(0.500000)
movc r3.x, r3.w, l(1.000000), r3.x
movc r3.x, r3.y, l(0), r3.x
lt r3.y, r3.x, cb0[33].z
add r3.x, -r3.x, cb0[33].z
div r6.y, r3.x, cb0[33].z
ne r3.x, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[36].y
add r3.w, v1.y, v1.y
max r3.w, r3.w, l(0.010000)
mul r3.w, r3.w, cb0[36].x
movc r3.x, r3.x, r3.w, cb0[36].x
div r3.x, r6.y, r3.x
min r3.x, r3.x, l(1.000000)
add r6.z, -r3.x, l(1.000000)
movc r6.yz, r3.yyyy, r6.yyzy, l(0,0,1.000000,0)
and r6.x, r3.y, l(0x3f800000)
lt r3.x, l(0.000010), v6.x
movc r7.xy, r3.xxxx, l(1.000000,0,0,0), r6.xzxx
lt r3.x, l(0.500000), cb0[79].w
add r3.y, cb0[78].w, cb0[78].w
min r3.y, r3.y, l(1.000000)
movc r3.x, r3.x, r3.y, l(1.000000)
lt r3.y, l(0.900000), r4.x
if_nz r3.y
  mul r3.yw, v3.yyyy, cb2[15].xxxy
  mad r3.yw, cb2[14].xxxy, v3.xxxx, r3.yyyw
  mad r8.yz, cb2[16].xxyx, v3.zzzz, r3.yywy
  mul r8.x, r8.y, cb0[67].y
  mad r3.yw, r8.xxxz, l(0.000000, 0.500000, 0.000000, 0.500000), l(0.000000, 0.500000, 0.000000, 0.500000)
  sample_indexable(texture2d)(float,float,float,float) r3.y, r3.ywyy, t2.yxzw, s3
  mul_sat r3.y, r3.y, cb0[67].x
  add r6.xzw, cb0[68].xxyz, -cb0[69].xxyz
  mad r6.xzw, r3.yyyy, r6.xxzw, cb0[69].xxyz
  mul r6.xzw, r2.xxyz, r6.xxzw
  dp3 r3.y, v3.xyzx, r1.xzwx
  max r3.y, r3.y, l(0.001000)
  log r3.y, r3.y
  mul r3.y, r3.y, cb0[70].w
  exp r3.y, r3.y
  mul_sat r8.x, r3.y, cb0[71].w
  lt r3.y, cb0[72].z, r8.x
  if_nz r3.y
    mov r9.xyz, cb0[73].xyzx
  else
    ne r3.y, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[72].y
    if_nz r3.y
      mov r8.y, l(0.500000)
      sample_indexable(texture2d)(float,float,float,float) r8.yzw, r8.xyxx, t3.wxyz, s4
      mul r9.xyz, r4.zzzz, r8.yzwy
    else
      mul r8.xyz, r8.xxxx, cb0[71].xyzx
      mul r9.xyz, r4.zzzz, r8.xyzx
    endif
  endif
  ne r3.y, l(0.000000, 0.000000, 0.000000, 0.000000), v6.x
  mul r8.xyz, r9.xyzx, cb0[72].xxxx
  movc r8.xyz, r3.yyyy, r8.xyzx, r9.xyzx
  ne r3.y, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[36].z
  add r9.xyz, cb0[70].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
  mad r9.xyz, r6.yyyy, r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  movc r9.xyz, r3.yyyy, r9.xyzx, cb0[70].xyzx
  mul r10.xyz, r6.xzwx, r9.xyzx
  ne r3.y, l(0.000000, 0.000000, 0.000000, 0.000000), r7.x
  mul r11.xyz, r6.xzwx, cb0[75].xxxx
  movc r11.xyz, r3.yyyy, r10.xyzx, r11.xyzx
  lt r3.y, r3.x, l(1.000000)
  mad r6.xyz, -r6.xzwx, r9.xyzx, r11.xyzx
  mad r6.xyz, r3.xxxx, r6.xyzx, r10.xyzx
  movc r6.xyz, r3.yyyy, r6.xyzx, r11.xyzx
  mul r8.xyz, r8.xyzx, cb0[75].xxxx
else
  add r3.y, r0.x, l(-1.000000)
  mad r3.w, r3.y, l(0.100000), l(0.050000)
  ne r4.y, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[34].w
  if_nz r4.y
    mad r4.w, r3.y, l(0.100000), l(0.550000)
    add r7.z, -r3.w, l(1.000000)
    add r7.w, -r4.w, l(1.000000)
    sample_indexable(texture2d)(float,float,float,float) r9.xyz, r7.yzyy, t4.xyzw, s2
    sample_indexable(texture2d)(float,float,float,float) r11.xyz, r7.ywyy, t4.xyzw, s2
    add r9.xyz, r9.xyzx, -r11.xyzx
    mad r9.xyz, cb0[76].zzzz, r9.xyzx, r11.xyzx
    mov r11.xz, l(0,0,0,0)
    mov r11.yw, r7.zzzw
    sample_indexable(texture2d)(float,float,float,float) r12.xyz, r11.xyxx, t4.xyzw, s2
    sample_indexable(texture2d)(float,float,float,float) r11.xyz, r11.zwzz, t4.xyzw, s2
    add r12.xyz, -r11.xyzx, r12.xyzx
    mad r11.xyz, cb0[76].zzzz, r12.xyzx, r11.xyzx
  else
    add r12.x, -r3.w, l(1.000000)
    mov r12.y, r7.y
    sample_indexable(texture2d)(float,float,float,float) r9.xyz, r12.yxyy, t4.xyzw, s2
    mov r12.z, l(0)
    sample_indexable(texture2d)(float,float,float,float) r11.xyz, r12.zxzz, t4.xyzw, s2
  endif
  lt r4.w, r3.x, l(1.000000)
  if_nz r4.w
    if_nz r4.y
      mad r3.y, r3.y, l(0.100000), l(0.550000)
      add r12.yw, -r3.wwwy, l(0.000000, 1.000000, 0.000000, 1.000000)
      mov r12.xz, l(0,0,0,0)
      sample_indexable(texture2d)(float,float,float,float) r7.yzw, r12.xyxx, t4.wxyz, s2
      sample_indexable(texture2d)(float,float,float,float) r12.xyz, r12.zwzz, t4.xyzw, s2
      add r7.yzw, r7.yyzw, -r12.xxyz
      mad r7.yzw, cb0[76].zzzz, r7.yyzw, r12.xxyz
    else
      add r12.y, -r3.w, l(1.000000)
      mov r12.x, l(0)
      sample_indexable(texture2d)(float,float,float,float) r7.yzw, r12.xyxx, t4.wxyz, s2
    endif
  else
    mov r7.yzw, l(0,0,0,0)
  endif
  mul r10.xyz, r2.xyzx, r11.xyzx
  ne r3.y, l(0.000000, 0.000000, 0.000000, 0.000000), r7.x
  mul r9.xyz, r2.xyzx, r9.xyzx
  mul r11.xyz, r2.xyzx, cb0[75].xxxx
  movc r9.xyz, r3.yyyy, r9.xyzx, r11.xyzx
  mul r11.xyz, r2.xyzx, r7.yzwy
  mad r7.xyz, -r2.xyzx, r7.yzwy, r9.xyzx
  mad r7.xyz, r3.xxxx, r7.xyzx, r11.xyzx
  movc r6.xyz, r4.wwww, r7.xyzx, r9.xyzx
  eq r3.y, r0.x, l(1.000000)
  movc r3.w, r5.z, cb0[58].w, cb0[62].w
  movc r4.y, r5.z, cb0[59].x, cb0[63].x
  movc r3.w, r5.y, cb0[54].w, r3.w
  movc r4.y, r5.y, cb0[55].x, r4.y
  movc r7.x, r5.x, cb0[50].w, r3.w
  movc r7.y, r5.x, cb0[51].x, r4.y
  movc r3.yw, r3.yyyy, cb0[38].xxxy, r7.xxxy
  dp3 r1.x, v3.xyzx, r1.xzwx
  max r1.x, r1.x, l(0.001000)
  log r1.x, r1.x
  mul r1.x, r1.x, r3.y
  exp r1.x, r1.x
  add r1.z, -r4.z, l(1.000000)
  lt r1.x, r1.z, r1.x
  mul r4.yzw, r3.wwww, cb0[37].yyzw
  mul r4.xyz, r4.xxxx, r4.yzwy
  and r4.xyz, r1.xxxx, r4.xyzx
  mul r4.xyz, r4.xyzx, cb0[75].xxxx
  and r8.xyz, r1.xxxx, r4.xyzx
endif
mul r1.xzw, r2.xxyz, cb0[43].xxyz
mul r1.xzw, r1.xxzw, cb0[42].zzzz
eq r0.x, r0.x, l(1.000000)
mul r2.xyz, r1.xzwx, cb0[42].wwww
mul r4.xyz, r1.xzwx, cb0[49].xxxx
mul r7.xyz, r1.xzwx, cb0[52].wwww
mul r9.xyz, r1.xzwx, cb0[56].wwww
mul r11.xyz, r1.xzwx, cb0[60].wwww
movc r1.xzw, r5.wwww, r11.xxyz, r1.xxzw
movc r1.xzw, r5.zzzz, r9.xxyz, r1.xxzw
movc r1.xzw, r5.yyyy, r7.xxyz, r1.xxzw
movc r1.xzw, r5.xxxx, r4.xxyz, r1.xxzw
movc r1.xzw, r0.xxxx, r2.xxyz, r1.xxzw
lt r0.x, r3.x, l(1.000000)
mul r2.xyz, r3.xxxx, r8.xyzx
movc r2.xyz, r0.xxxx, r2.xyzx, r8.xyzx
add r2.xyz, r2.xyzx, r6.xyzx
add r1.xzw, r1.xxzw, -r2.xxyz
mad r1.xzw, r2.wwww, r1.xxzw, r2.xxyz
movc r1.xzw, r3.zzzz, r1.xxzw, r2.xxyz
dp3 r0.x, v3.xyzx, v3.xyzx
rsq r0.x, r0.x
mul r2.xyz, r0.xxxx, v3.xyzx
dp3_sat r0.x, r0.yzwy, r2.xyzx
add r0.x, -r0.x, l(1.000000)
max r0.x, r0.x, l(0.000100)
log r0.x, r0.x
mul r0.x, r0.x, cb0[89].x
exp r0.x, r0.x
max r0.yzw, cb0[87].xxyz, cb0[88].xxyz
mul r0.xyz, r0.xxxx, r0.yzwy
mad r3.xyz, r0.xyzx, cb0[89].yyyy, r1.xzwx
add r0.w, -r2.w, l(1.000000)
mad r0.w, cb0[89].z, r0.w, r2.w
mad r0.xyz, r0.xyzx, cb0[89].yyyy, r10.xyzx
max r1.x, r3.z, r3.y
max r2.w, r1.x, r3.x
lt r1.x, l(1.000000), r2.w
div r2.xyz, r3.xyzx, r2.wwww
mov r3.w, l(1.000000)
movc r2.xyzw, r1.xxxx, r2.xyzw, r3.xyzw
add r1.xzw, r0.xxyz, -r2.xxyz
mad r1.xzw, cb0[85].xxxx, r1.xxzw, r2.xxyz
movc r0.xyz, r1.yyyy, r1.xzwx, r0.xyzx
mul_sat r1.x, r2.w, l(0.050000)
sqrt o1.w, r1.x
mad o0.xyz, v3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)
ne r1.x, l(0.000000, 0.000000, 0.000000, 0.000000), cb0[22].x
mul r1.y, cb0[22].y, l(0.00392156886)
movc o2.z, r1.x, r1.y, r0.z
and o0.w, r5.x, l(0x3eaa7efa)
mov o1.xyz, r2.xyzx
mov o2.xyw, r0.xyxw
mov o3.x, l(0.0156862754)
mov o4.x, r0.w
mov o5.x, l(0)
ret
// Approximately 0 instruction slots used

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
