// **** RESPONSIVE UI SHADER ****
// Contributors: SinsOfSeven
// #define VERTEX_SHADER 1
// #define PIXEL_SHADER 1

Texture1D<float4> IniParams : register(t120);

#define SIZE IniParams[87].xy
#define OFFSET IniParams[87].zw

struct vs2ps {
	float4 pos : SV_Position0;
	float2 uv : TEXCOORD1;
};

#ifdef VERTEX_SHADER
void main(
		out vs2ps output,
		uint vertex : SV_VertexID)
{
	float2 BaseCoord,Offset;
	Offset.x = OFFSET.x*2-1;
	Offset.y = (1-OFFSET.y)*2-1;
	BaseCoord.xy = float2((2*SIZE.x),(2*(-SIZE.y)));
	// Not using vertex buffers so manufacture our own coordinates.
	switch(vertex) {
		case 0:
			output.pos.xy = float2(BaseCoord.x+Offset.x, BaseCoord.y+Offset.y);
			output.uv = float2(1,0);
			break;
		case 1:
			output.pos.xy = float2(BaseCoord.x+Offset.x, 0+Offset.y);
			output.uv = float2(1,1);
			break;
		case 2:
			output.pos.xy = float2(0+Offset.x, BaseCoord.y+Offset.y);
			output.uv = float2(0,0);
			break;
		case 3:
			output.pos.xy = float2(0+Offset.x, 0+Offset.y);
			output.uv = float2(0,1);
			break;
		default:
			output.pos.xy = 0;
			output.uv = float2(0,0);
			break;
	};
	output.pos.zw = float2(0, 1);
}
#endif

float4 lerpOutput(float4 a, float4 b, float4 dm)
{
	if(dm.x < dm.y) return lerp(a.xyzw, b.xyzw, 1-dm.wwww);
	else return a;
}
float lerpOutput(float a, float b, float4 dm)
{
	if(dm.x < dm.y) return lerp(a.x, b.x, 1-dm.w);
	else return a;
}

#ifdef PIXEL_SHADER
Texture2D<float2> t19 : register(t29);
Texture2D<float4> t15 : register(t25);
Texture2D<float4> t14 : register(t24);
Texture2D<float4> t13 : register(t23);
Texture2D<float4> t12 : register(t22);
Texture2D<float4> t11 : register(t21);
Texture2D<float4> t10 : register(t20);
Texture2D<float2>  t9 : register(t19);
Texture2D<float4>  t5 : register(t15);
Texture2D<float4>  t4 : register(t14);
Texture2D<float4>  t3 : register(t13);
Texture2D<float4>  t2 : register(t12);
Texture2D<float4>  t1 : register(t11);
Texture2D<float4>  t0 : register(t10);
void main(
	vs2ps input,
	out float oD : SV_Depth,
	out float4 o0 : SV_Target0,
	out float4 o1 : SV_Target1,
	out float4 o2 : SV_Target2,
	out float o3 : SV_Target3,
	out float o4 : SV_Target4,
	out float o5 : SV_Target5//,
)
{
	float2 dims;
	t1.GetDimensions(dims.x, dims.y);
	if (!dims.x || !dims.y) discard;
	input.uv.y = 1-input.uv.y;
	dims = input.uv.xy*dims.xy;
	float4 depth_mask;
	depth_mask.w = t10.Load(int3(dims, 0)).x;
	depth_mask.x = t9.Load(int3(dims, 0)).x;
	depth_mask.y = t19.Load(int3(dims, 0)).x;
	depth_mask.z = max(depth_mask.x, depth_mask.y);
	if (depth_mask.y < depth_mask.x) discard;
	if ( !depth_mask.w || depth_mask.w == 1) discard;
	o0.xyzw = lerpOutput(
		t0.Load(int3(dims, 0)),
		t10.Load(int3(dims, 0)),
		depth_mask
	);
	o1.xyzw = lerpOutput(
		t1.Load(int3(dims, 0)),
		t11.Load(int3(dims, 0)),
		depth_mask
	);
	o2.xyzw = lerpOutput(
		t2.Load(int3(dims, 0)),
		t12.Load(int3(dims, 0)),
		depth_mask
	);
	o3.x = lerpOutput(
		t3.Load(int3(dims, 0)).x,
		t13.Load(int3(dims, 0)).x,
		depth_mask
	);
	o4.x = lerpOutput(
		t4.Load(int3(dims, 0)).x,
		t14.Load(int3(dims, 0)).x,
		depth_mask
	);
	o5.x = lerpOutput(
		t5.Load(int3(dims, 0)).x,
		t15.Load(int3(dims, 0)).x,
		depth_mask
	);
	oD.x = depth_mask.z;
}
#endif
