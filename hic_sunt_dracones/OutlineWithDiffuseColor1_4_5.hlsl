
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


// 3Dmigoto declarations
#define uncensor IniParams[69].z
#define intensity IniParams[70].xyzw
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
  float2 dims;
  
//Re-enable Modesty
  r0.x = -(0 != cb0[35].y);
  r0.y = -0.00999999978 + v1.w;
  r0.y = -(r0.y < 0);
  r0.x = r0.x ? r0.y : 0;
  if (r0.x != 0) discard;
  r0.x = -(0 != cb0[40].y);
  if (r0.x != 0) {
    r0.x = -(cb0[40].z < 0.949999988);
    if (r0.x != 0) {
      r0.xy = v4.yx / v4.ww;
      r0.xy = cb1[7].yx * r0.xy;
      r0.xy = float2(0.25,0.25) * r0.xy;
      r0.zw = -(r0.xy >= -r0.xy);
      r0.xy = frac(abs(r0.xy));
      r0.xy = r0.zw ? r0.xy : -r0.xy;
      r0.xy = float2(4,4) * r0.xy;
      r0.xy = (uint2)r0.xy;
      r1.x = dot(cb0[16].xyzw, icb[r0.y+0].xyzw);
      r1.y = dot(cb0[17].xyzw, icb[r0.y+0].xyzw);
      r1.z = dot(cb0[18].xyzw, icb[r0.y+0].xyzw);
      r1.w = dot(cb0[19].xyzw, icb[r0.y+0].xyzw);
      r0.x = dot(r1.xyzw, icb[r0.x+0].xyzw);
      r0.x = cb0[40].z * 17 + -r0.x;
      r0.x = -0.00999999978 + r0.x;
      r0.x = -(r0.x < 0);
      if (uncensor == 0.0){
        if (r0.x != 0) discard;
      }
    }
  }
  r0.x = t1.Sample(s0_s, v2.xy).w;
  r0.y = -(cb0[38].x == 1.000000);
  r0.x = -cb0[38].y + r0.x;
  r0.x = -(r0.x < 0);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
//End Modesty

  t69.GetDimensions(dims.x, dims.y);
  mask.xyzw = t69.Load(int3(v2.xy*dims.xy,0)).xyzw;
  //mask.xyzw = t69.Sample(s12_s, v2.xy).xyzw;
  //if(mask.y == 0){
    if(mask.x == 0.0) discard;
    if(mask.x == 1.0) discard;
  //}

  ren1.xyzw = t71.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  ren2.xyzw = t72.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  // ren3.xyzw = t73.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  // ren4.xyzw = t74.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  normalmap.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  diffuse.xyzw = t1.Sample(s1_s, v2.xy).xyzw;
  lightmap.xyzw = t2.Sample(s2_s, v2.xy).xyzw;

  ren1 = ren1 + ren2 * 0.25;
  ren1 = clamp(ren1,0,1);
  
  //pray
  r0 = float4(0,0,0,0);
  r3 = float4(0,0,0,0); r4 = float4(0,0,0,0); r5 = float4(0,0,0,0); r6 = float4(0,0,0,0);
  r0.x = -1 + 0.5;
  r4.xyzw = t2.SampleBias(s1_s, v2.xy, r0.x).xyzw;
  r3.xy = float2(0,0);
  r0.x = 0;
  r5.xyzw = -(r4.wwww >= float4(0.800000012,0.400000006,0.200000003,0.600000024));
  r0.x = r0.x ? r5.x : 0;
  r0.x = r0.x ? 2 : 1;
  r3.w = -(0 != 10);
  r3.w = r5.y ? r3.w : 0;
  r6.xyz = -(r4.www < float3(0.600000024,0.400000006,0.800000012));
  r3.w = r3.w ? r6.x : 0;
  r0.x = r3.w ? 3 : r0.x;
  r3.w = -(0 != 10);
  r3.w = r5.z ? r3.w : 0;
  r3.w = r6.y ? r3.w : 0;
  r0.x = r3.w ? 4 : r0.x;
  r3.w = -(0 != 10);
  r3.w = r5.w ? r3.w : 0;
  r3.w = r6.z ? r3.w : 0;
  r0.x = r3.w ? 5 : r0.x;
  r5.xyzw = -(r0.xxxx == float4(2,3,4,5));
  //
  if(ren1.x > 0.0 || ren1.y > 0.0 || ren1.z > 0.0){
    r2.xyzw = float4(
      lerp(diffuse.x, ren1.x, mask.x),
      lerp(diffuse.y, ren1.y, mask.x),
      lerp(diffuse.z, ren1.z, mask.x),
      0.0
    );
  }else{
    r2.xyz = diffuse.xyz*0.5;
    r2.w = 0.0;
  }

  r3.y = mask.y > 0 ? mask.y * intensity.y : 0.223606795;
  r3.z = mask.z > 0 ? mask.z * intensity.z : 0.0;
  o0.xyz = v3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = r5.x ? 0.333000 : 0;
  o1 = float4(0,0,0,0);
  o1.xyz = r2.xyz;
  o1.w = r3.y;
  o2.xyz = r2.xyz;
  o2.w = 1.0;
  o3.x = 0.0;
  o4.x = r3.z;
  o5.x = 0.0;

  return;
}
#endif