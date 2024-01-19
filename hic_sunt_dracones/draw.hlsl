Texture1D<float4> IniParams : register(t120);

struct vs2ps {
	float4 pos : SV_Position0;
	float2 uv : TEXCOORD1;
};

#ifdef VERTEX_SHADER

void main(
		out vs2ps output,
		uint vertex : SV_VertexID)
{
	switch(vertex) {
		case 0:
			output.pos.xy = float2(1, 1);
			output.uv = float2(0,1);
			break;
		case 1:
			output.pos.xy = float2(1, -1);
			output.uv = float2(0,0);
			break;
		case 2:
			output.pos.xy = float2(-1, 1);
			output.uv = float2(1,1);
			break;
		case 3:
			output.pos.xy = float2(-1, -1);
			output.uv = float2(1,0);
			break;
		default:
			output.pos.xy = 0;
			output.uv = float2(0,0);
			break;
	};
	output.pos.zw = float2(0, 1);
}
#endif

#ifdef PIXEL_SHADER

//Texture2D<float4> t74 : register(t74);
//Texture2D<float4> t73 : register(t73);
Texture2D<float4> t72 : register(t72);
Texture2D<float4> t71 : register(t71);

Texture2D<float4> Transparency : register(t0);

SamplerState s15_s : register(s15);
SamplerState s0_s : register(s0);

void main(vs2ps input, out float4 result : SV_Target0)
{	
	input.uv.x = 1 - input.uv.x;
	result = Transparency.Sample(s0_s, input.uv.xy);
}
#endif
