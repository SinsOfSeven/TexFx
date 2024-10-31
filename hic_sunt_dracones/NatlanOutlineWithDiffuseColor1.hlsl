
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

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[170];
}


// #MARK: --- HSV CODE ---
// http://lolengine.net/blog/2013/07/27/rgb-to-hsv-in-glsl
float3 rgb2hsv(float3 c)
{
  float4 K = float4(0.f, -1.f / 3.f, 2.f / 3.f, -1.f);
  float4 p = c.g < c.b ? float4(c.bg, K.wz) : float4(c.gb, K.xy);
  float4 q = c.r < p.x ? float4(p.xyw, c.r) : float4(c.r, p.yzx);

  float d = q.x - min(q.w, q.y);
  float e = 1e-10;
  return float3(abs(q.z + (q.w - q.y) / (6.f * d + e)), d / (q.x + e), q.x);
}

float3 hsv2rgb(float3 c)
{
  float4 K = float4(1.f, 2.f / 3.f, 1.f / 3.f, 3.f);
  float3 p = abs(frac(c.xxx + K.xyz) * 6.f - K.www);
  return c.z * lerp(K.xxx, saturate(p - K.xxx), c.y);
}

float3 adjust_hue(float3 HSV, float3 offset)
{
	if(HSV.x>=0.266f) HSV.x = fmod(HSV.x + offset.x, 1);
  HSV.y += offset.y;
  HSV.z += offset.z;
	return HSV;
}

// #MARK: 3Dmigoto declarations
#define uncensor IniParams[69].z
#define intensity IniParams[70].xyzw
#define hsv_in IniParams[71].xyzw
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);

#ifdef PIXEL_SHADER
void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD3,
  float4 v5 : TEXCOORD4,
  float4 v6 : TEXCOORD5,
  float4 v7 : TEXCOORD6,
  float4 v8 : TEXCOORD7,
  float4 v9 : TEXCOORD11,
  float4 v10 : TEXCOORD12,
  uint v11 : SV_IsFrontFace0,
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

  r0 = float4(0,0,0,0);
  r1 = float4(0,0,0,0);
  r0.x = -((int)v11.x == 0);
  r0.y = r0.y ? r0.x : 0;
  r0.yz = r0.yy ? v6.zw : v6.xy;
  float2 texc = float2(r0.yz);
//Re-enable Modesty
  r0.x = -(0 != cb0[102].y);
  if (r0.x != 0) {
    if (uncensor == 2){
      r0.x = -(cb0[102].z < 0.1);
    }else{
      r0.x = -(cb0[102].z < 0.949999988);
    }
    
    if (r0.x != 0) {
      r0.xy = v3.yx / v3.ww;
      r0.xy = cb1[7].yx * r0.xy;
      r0.xy = float2(0.25,0.25) * r0.xy;
      r0.zw = -(r0.xy >= -r0.xy);
      r0.xy = frac(abs(r0.xy));
      r0.xy = r0.zw ? r0.xy : -r0.xy;
      r0.xy = float2(4,4) * r0.xy;
      r0.xy = (uint2)r0.xy;
      r1.x = dot(cb0[17].xyzw, icb[r0.y+0].xyzw);
      r1.y = dot(cb0[18].xyzw, icb[r0.y+0].xyzw);
      r1.z = dot(cb0[19].xyzw, icb[r0.y+0].xyzw);
      r1.w = dot(cb0[20].xyzw, icb[r0.y+0].xyzw);
      r0.x = dot(r1.xyzw, icb[r0.x+0].xyzw);
      r0.x = cb0[102].z * 17 + -r0.x;
      r0.x = -0.00999999978 + r0.x;
      r0.x = -(r0.x < 0);
      if (uncensor != 0.0){
        if (r0.x != 0) discard;
      }
    }
  }
  r1.xyzw = t1.Sample(s0_s, texc).xyzw;
  r0.z = -(cb0[96].x == 1.000000);
  r0.w = -cb0[96].y + r1.w;
  r0.w = -(r0.w < 0);
  r0.z = r0.z ? r0.w : 0;
  if (r0.z != 0) discard;
 
//End Modesty
  float2 dims;
  // t69.GetDimensions(dims.x, dims.y);
  // mask.xyzw = t69.Load(uint3(++dims.xy*frac(texc.xy*0.99999),0)).xyzw;
  mask.xyzw = t69.Sample(s0_s, texc).xyzw;
  //if(mask.y == 0){
    if(mask.x == 0.0) discard;
    if(mask.x == 1.0) discard;
  //}

  ren1.xyzw = t71.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  ren2.xyzw = t72.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  // ren3.xyzw = t73.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  ren4.xyzw = t74.Sample(s15_s, float2(v0.x/cb1[7].x, v0.y/cb1[7].y)).xyzw;
  normalmap.xyzw = t0.Sample(s0_s, texc).xyzw;
  diffuse.xyzw = t1.Sample(s0_s, texc).xyzw;
  lightmap.xyzw = t2.Sample(s0_s, texc).xyzw;

  ren1 = ren1 + ren2 * 0.25;
  ren1 = clamp(ren1,0,1);
  
  //pray
  r0 = float4(0,0,0,0);
  r3 = float4(0,0,0,0); r4 = float4(0,0,0,0); r5 = float4(0,0,0,0); r6 = float4(0,0,0,0);
  r0.x = -1 + 0.5;
  r4.xyzw = t2.SampleBias(s0_s, texc, r0.x).xyzw;
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
  float3 hsv = rgb2hsv(diffuse.xyz);
  hsv = adjust_hue(hsv, hsv_in.xyz);
  hsv = hsv2rgb(hsv);
  diffuse.xyz = mask.w > 0 && mask.w < 0.25 && hsv_in.w == 1 ? hsv.xyz : diffuse.xyz;
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
  r3.z = mask.z > 0 ? mask.z * intensity.z : 0.223606795;
  //r3.yz = float2(max(ren1.w,r3.y),max(ren4.x,r3.z));
  o0.xyz = v2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.w = r5.x ? 0.333000 : 0;
  o1.xyz = r2.xyz;
  o1.w = r3.y;
  o2.xyz = r2.xyz;
  o2.w = 1.0;
  o3.x = 0.0156862754;
  o4.x = r3.z;
  o5.x = 0.0;

  return;
}
#endif