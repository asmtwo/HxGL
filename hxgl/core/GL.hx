#if !(js || cpp)
	#error
#end


package hxgl.core;
#if js
@:native( 'WebGLRenderingContext' )
extern class GL
{
	public function viewport ( x:Int, y:Int, width:Int, height:Int ):Void;
	public function clearColor ( red:Float, green:Float, blue:Float, alpha:Float ):Void;
	public function clear ( flags:Int ):Void;
	public function enable ( flag:GLEnum ):Void;
	public function disable ( flag:GLEnum ):Void;
	public function clearDepth ( depth:Float ):Void;
	public function createBuffer ():Buffer;
	public function bindBuffer ( target:GLEnum, buffer:Buffer ):Void;
	public function bufferData ( target:GLEnum, size:Int, type:GLEnum ):Void;
	public function bufferSubData ( target:GLEnum, offset:Int, data:View ):Void;
	public function drawElements ( target:GLEnum, num:Int, type:GLEnum, offset:Int ):Void;
	public function createProgram (  ):Program;
	public function createShader ( type:Int ):Shader;
	public function shaderSource ( shader:Shader, code:String ):Void;
	public function compileShader ( shader:Shader ):Void;
	public function getShaderParameter ( shader:Shader, param:GLEnum ):Dynamic;
	public function deleteShader ( shader:Shader ):Void;
	public function attachShader ( program:Program, shader:Shader ):Void;
	public function linkProgram ( program:Program ):Void;
	public function getProgramParameter ( program:Program, param:GLEnum ):Dynamic;
	public function deleteProgram ( program:Program ):Void;
	public function useProgram ( program:Program ):Void;
	public function getAttribLocation ( program:Program, location:String ):Dynamic;
	public function disableVertexAttribArray ( locindex:Dynamic ):Void;
	public function enableVertexAttribArray ( locindex:Dynamic ):Void;
	public function vertexAttribPointer ( locindex:Dynamic, size:Int, type:GLEnum, normalize:Bool, stride:Int, bufferOffset:Int ):Void;
	public function cullFace ( flag:GLEnum ):Void;
	public function depthMask ( status:Bool ):Void;
	public function depthFunc ( flag:GLEnum ):Void;
	public function createTexture (  ):Texture;
	public function bindTexture ( target:GLEnum, texture:Texture ):Void;
	public function texParameteri ( target:GLEnum, a:GLEnum, b:GLEnum ):Void;
	public function uniformMatrix4fv (locindex:Dynamic, transpose:Bool, value:Array<Float>):Void;
	public var DEPTH_BUFFER_BIT:Int;
	public var STENCIL_BUFFER_BIT:Int;
	public var COLOR_BUFFER_BIT:Int;
	public var POINTS:Int;
	public var LINES:Int;
	public var LINE_LOOP:Int;
	public var LINE_STRIP:Int;
	public var TRIANGLES:Int;
	public var TRIANGLE_STRIP:Int;
	public var TRIANGLE_FAN:Int;
	public var ZERO:Int;
	public var ONE:Int;
	public var SRC_COLOR:Int;
	public var ONE_MINUS_SRC_COLOR:Int;
	public var SRC_ALPHA:Int;
	public var ONE_MINUS_SRC_ALPHA:Int;
	public var DST_ALPHA:Int;
	public var ONE_MINUS_DST_ALPHA:Int;
	public var DST_COLOR:Int;
	public var ONE_MINUS_DST_COLOR:Int;
	public var SRC_ALPHA_SATURATE:Int;
	public var FUNC_ADD:Int;
	public var BLEND_EQUATION:Int;
	public var BLEND_EQUATION_RGB:Int;
	public var BLEND_EQUATION_ALPHA:Int;
	public var FUNC_SUBTRACT:Int;
	public var FUNC_REVERSE_SUBTRACT:Int;
	public var BLEND_DST_RGB:Int;
	public var BLEND_SRC_RGB:Int;
	public var BLEND_DST_ALPHA:Int;
	public var BLEND_SRC_ALPHA:Int;
	public var CONSTANT_COLOR:Int;
	public var ONE_MINUS_CONSTANT_COLOR:Int;
	public var CONSTANT_ALPHA:Int;
	public var ONE_MINUS_CONSTANT_ALPHA:Int;
	public var BLEND_COLOR:Int;
	public var ARRAY_BUFFER:Int;
	public var ELEMENT_ARRAY_BUFFER:Int;
	public var ARRAY_BUFFER_BINDING:Int;
	public var ELEMENT_ARRAY_BUFFER_BINDING:Int;
	public var STREAM_DRAW:Int;
	public var STATIC_DRAW:Int;
	public var DYNAMIC_DRAW:Int;
	public var BUFFER_SIZE:Int;
	public var BUFFER_USAGE:Int;
	public var CURRENT_VERTEX_ATTRIB:Int;
	public var FRONT:Int;
	public var BACK:Int;
	public var FRONT_AND_BACK:Int;
	public var CULL_FACE:Int;
	public var BLEND:Int;
	public var DITHER:Int;
	public var STENCIL_TEST:Int;
	public var DEPTH_TEST:Int;
	public var SCISSOR_TEST:Int;
	public var POLYGON_OFFSET_FILL:Int;
	public var SAMPLE_ALPHA_TO_COVERAGE:Int;
	public var SAMPLE_COVERAGE:Int;
	public var NO_ERROR:Int;
	public var INVALID_ENUM:Int;
	public var INVALID_VALUE:Int;
	public var INVALID_OPERATION:Int;
	public var OUT_OF_MEMORY:Int;
	public var CW:Int;
	public var CCW:Int;
	public var LINE_WIDTH:Int;
	public var ALIASED_POINT_SIZE_RANGE:Int;
	public var ALIASED_LINE_WIDTH_RANGE:Int;
	public var CULL_FACE_MODE:Int;
	public var FRONT_FACE:Int;
	public var DEPTH_RANGE:Int;
	public var DEPTH_WRITEMASK:Int;
	public var DEPTH_CLEAR_VALUE:Int;
	public var DEPTH_FUNC:Int;
	public var STENCIL_CLEAR_VALUE:Int;
	public var STENCIL_FUNC:Int;
	public var STENCIL_FAIL:Int;
	public var STENCIL_PASS_DEPTH_FAIL:Int;
	public var STENCIL_PASS_DEPTH_PASS:Int;
	public var STENCIL_REF:Int;
	public var STENCIL_VALUE_MASK:Int;
	public var STENCIL_WRITEMASK:Int;
	public var STENCIL_BACK_FUNC:Int;
	public var STENCIL_BACK_FAIL:Int;
	public var STENCIL_BACK_PASS_DEPTH_FAIL:Int;
	public var STENCIL_BACK_PASS_DEPTH_PASS:Int;
	public var STENCIL_BACK_REF:Int;
	public var STENCIL_BACK_VALUE_MASK:Int;
	public var STENCIL_BACK_WRITEMASK:Int;
	public var VIEWPORT:Int;
	public var SCISSOR_BOX:Int;
	public var COLOR_CLEAR_VALUE:Int;
	public var COLOR_WRITEMASK:Int;
	public var UNPACK_ALIGNMENT:Int;
	public var PACK_ALIGNMENT:Int;
	public var MAX_TEXTURE_SIZE:Int;
	public var MAX_VIEWPORT_DIMS:Int;
	public var SUBPIXEL_BITS:Int;
	public var RED_BITS:Int;
	public var GREEN_BITS:Int;
	public var BLUE_BITS:Int;
	public var ALPHA_BITS:Int;
	public var DEPTH_BITS:Int;
	public var STENCIL_BITS:Int;
	public var POLYGON_OFFSET_UNITS:Int;
	public var POLYGON_OFFSET_FACTOR:Int;
	public var TEXTURE_BINDING_2D:Int;
	public var SAMPLE_BUFFERS:Int;
	public var SAMPLES:Int;
	public var SAMPLE_COVERAGE_VALUE:Int;
	public var SAMPLE_COVERAGE_INVERT:Int;
	public var NUM_COMPRESSED_TEXTURE_FORMATS:Int;
	public var COMPRESSED_TEXTURE_FORMATS:Int;
	public var DONT_CARE:Int;
	public var FASTEST:Int;
	public var NICEST:Int;
	public var GENERATE_MIPMAP_HINT:Int;
	public var BYTE:Int;
	public var UNSIGNED_BYTE:Int;
	public var SHORT:Int;
	public var UNSIGNED_SHORT:Int;
	public var INT:Int;
	public var UNSIGNED_INT:Int;
	public var FLOAT:Int;
	public var DEPTH_COMPONENT:Int;
	public var ALPHA:Int;
	public var RGB:Int;
	public var RGBA:Int;
	public var LUMINANCE:Int;
	public var LUMINANCE_ALPHA:Int;
	public var UNSIGNED_SHORT_4_4_4_4:Int;
	public var UNSIGNED_SHORT_5_5_5_1:Int;
	public var UNSIGNED_SHORT_5_6_5:Int;
	public var FRAGMENT_SHADER:Int;
	public var VERTEX_SHADER:Int;
	public var MAX_VERTEX_ATTRIBS:Int;
	public var MAX_VERTEX_UNIFORM_VECTORS:Int;
	public var MAX_VARYING_VECTORS:Int;
	public var MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int;
	public var MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int;
	public var MAX_TEXTURE_IMAGE_UNITS:Int;
	public var MAX_FRAGMENT_UNIFORM_VECTORS:Int;
	public var SHADER_TYPE:Int;
	public var DELETE_STATUS:Int;
	public var LINK_STATUS:Int;
	public var VALIDATE_STATUS:Int;
	public var ATTACHED_SHADERS:Int;
	public var ACTIVE_UNIFORMS:Int;
	public var ACTIVE_ATTRIBUTES:Int;
	public var SHADING_LANGUAGE_VERSION:Int;
	public var CURRENT_PROGRAM:Int;
	public var NEVER:Int;
	public var LESS:Int;
	public var EQUAL:Int;
	public var LEQUAL:Int;
	public var GREATER:Int;
	public var NOTEQUAL:Int;
	public var GEQUAL:Int;
	public var ALWAYS:Int;
	public var KEEP:Int;
	public var REPLACE:Int;
	public var INCR:Int;
	public var DECR:Int;
	public var INVERT:Int;
	public var INCR_WRAP:Int;
	public var DECR_WRAP:Int;
	public var VENDOR:Int;
	public var RENDERER:Int;
	public var VERSION:Int;
	public var NEAREST:Int;
	public var LINEAR:Int;
	public var NEAREST_MIPMAP_NEAREST:Int;
	public var LINEAR_MIPMAP_NEAREST:Int;
	public var NEAREST_MIPMAP_LINEAR:Int;
	public var LINEAR_MIPMAP_LINEAR:Int;
	public var TEXTURE_MAG_FILTER:Int;
	public var TEXTURE_MIN_FILTER:Int;
	public var TEXTURE_WRAP_S:Int;
	public var TEXTURE_WRAP_T:Int;
	public var TEXTURE_2D:Int;
	public var TEXTURE:Int;
	public var TEXTURE_CUBE_MAP:Int;
	public var TEXTURE_BINDING_CUBE_MAP:Int;
	public var TEXTURE_CUBE_MAP_POSITIVE_X:Int;
	public var TEXTURE_CUBE_MAP_NEGATIVE_X:Int;
	public var TEXTURE_CUBE_MAP_POSITIVE_Y:Int;
	public var TEXTURE_CUBE_MAP_NEGATIVE_Y:Int;
	public var TEXTURE_CUBE_MAP_POSITIVE_Z:Int;
	public var TEXTURE_CUBE_MAP_NEGATIVE_Z:Int;
	public var MAX_CUBE_MAP_TEXTURE_SIZE:Int;
	public var TEXTURE0:Int;
	public var TEXTURE1:Int;
	public var TEXTURE2:Int;
	public var TEXTURE3:Int;
	public var TEXTURE4:Int;
	public var TEXTURE5:Int;
	public var TEXTURE6:Int;
	public var TEXTURE7:Int;
	public var TEXTURE8:Int;
	public var TEXTURE9:Int;
	public var TEXTURE10:Int;
	public var TEXTURE11:Int;
	public var TEXTURE12:Int;
	public var TEXTURE13:Int;
	public var TEXTURE14:Int;
	public var TEXTURE15:Int;
	public var TEXTURE16:Int;
	public var TEXTURE17:Int;
	public var TEXTURE18:Int;
	public var TEXTURE19:Int;
	public var TEXTURE20:Int;
	public var TEXTURE21:Int;
	public var TEXTURE22:Int;
	public var TEXTURE23:Int;
	public var TEXTURE24:Int;
	public var TEXTURE25:Int;
	public var TEXTURE26:Int;
	public var TEXTURE27:Int;
	public var TEXTURE28:Int;
	public var TEXTURE29:Int;
	public var TEXTURE30:Int;
	public var TEXTURE31:Int;
	public var ACTIVE_TEXTURE:Int;
	public var REPEAT:Int;
	public var CLAMP_TO_EDGE:Int;
	public var MIRRORED_REPEAT:Int;
	public var FLOAT_VEC2:Int;
	public var FLOAT_VEC3:Int;
	public var FLOAT_VEC4:Int;
	public var INT_VEC2:Int;
	public var INT_VEC3:Int;
	public var INT_VEC4:Int;
	public var BOOL:Int;
	public var BOOL_VEC2:Int;
	public var BOOL_VEC3:Int;
	public var BOOL_VEC4:Int;
	public var FLOAT_MAT2:Int;
	public var FLOAT_MAT3:Int;
	public var FLOAT_MAT4:Int;
	public var SAMPLER_2D:Int;
	public var SAMPLER_CUBE:Int;
	public var VERTEX_ATTRIB_ARRAY_ENABLED:Int;
	public var VERTEX_ATTRIB_ARRAY_SIZE:Int;
	public var VERTEX_ATTRIB_ARRAY_STRIDE:Int;
	public var VERTEX_ATTRIB_ARRAY_TYPE:Int;
	public var VERTEX_ATTRIB_ARRAY_NORMALIZED:Int;
	public var VERTEX_ATTRIB_ARRAY_POINTER:Int;
	public var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int;
	public var COMPILE_STATUS:Int;
	public var LOW_FLOAT:Int;
	public var MEDIUM_FLOAT:Int;
	public var HIGH_FLOAT:Int;
	public var LOW_INT:Int;
	public var MEDIUM_INT:Int;
	public var HIGH_INT:Int;
	public var FRAMEBUFFER:Int;
	public var RENDERBUFFER:Int;
	public var RGBA4:Int;
	public var RGB5_A1:Int;
	public var RGB565:Int;
	public var DEPTH_COMPONENT16:Int;
	public var STENCIL_INDEX:Int;
	public var STENCIL_INDEX8:Int;
	public var DEPTH_STENCIL:Int;
	public var RENDERBUFFER_WIDTH:Int;
	public var RENDERBUFFER_HEIGHT:Int;
	public var RENDERBUFFER_INTERNAL_FORMAT:Int;
	public var RENDERBUFFER_RED_SIZE:Int;
	public var RENDERBUFFER_GREEN_SIZE:Int;
	public var RENDERBUFFER_BLUE_SIZE:Int;
	public var RENDERBUFFER_ALPHA_SIZE:Int;
	public var RENDERBUFFER_DEPTH_SIZE:Int;
	public var RENDERBUFFER_STENCIL_SIZE:Int;
	public var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int;
	public var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int;
	public var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int;
	public var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int;
	public var COLOR_ATTACHMENT0:Int;
	public var DEPTH_ATTACHMENT:Int;
	public var STENCIL_ATTACHMENT:Int;
	public var DEPTH_STENCIL_ATTACHMENT:Int;
	public var NONE:Int;
	public var FRAMEBUFFER_COMPLETE:Int;
	public var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int;
	public var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int;
	public var FRAMEBUFFER_INCOMPLETE_DIMENSIONS:Int;
	public var FRAMEBUFFER_UNSUPPORTED:Int;
	public var FRAMEBUFFER_BINDING:Int;
	public var RENDERBUFFER_BINDING:Int;
	public var MAX_RENDERBUFFER_SIZE:Int;
	public var INVALID_FRAMEBUFFER_OPERATION:Int;
}
#elseif cpp
class GL
{
	public function new( )
	{
		DEPTH_BUFFER_BIT = 0x00000100;
		STENCIL_BUFFER_BIT = 0x00000400;
		COLOR_BUFFER_BIT = 0x00004000;
		POINTS = 0x0000;
		LINES = 0x0001;
		LINE_LOOP = 0x0002;
		LINE_STRIP = 0x0003;
		TRIANGLES = 0x0004;
		TRIANGLE_STRIP = 0x0005;
		TRIANGLE_FAN = 0x0006;
		ZERO = 0;
		ONE = 1;
		SRC_COLOR = 0x0300;
		ONE_MINUS_SRC_COLOR = 0x0301;
		SRC_ALPHA = 0x0302;
		ONE_MINUS_SRC_ALPHA = 0x0303;
		DST_ALPHA = 0x0304;
		ONE_MINUS_DST_ALPHA = 0x0305;
		DST_COLOR = 0x0306;
		ONE_MINUS_DST_COLOR = 0x0307;
		SRC_ALPHA_SATURATE = 0x0308;
		FUNC_ADD = 0x8006;
		BLEND_EQUATION = 0x8009;
		BLEND_EQUATION_RGB = 0x8009;
		BLEND_EQUATION_ALPHA = 0x883D;
		FUNC_SUBTRACT = 0x800A;
		FUNC_REVERSE_SUBTRACT = 0x800B;
		BLEND_DST_RGB = 0x80C8;
		BLEND_SRC_RGB = 0x80C9;
		BLEND_DST_ALPHA = 0x80CA;
		BLEND_SRC_ALPHA = 0x80CB;
		CONSTANT_COLOR = 0x8001;
		ONE_MINUS_CONSTANT_COLOR = 0x8002;
		CONSTANT_ALPHA = 0x8003;
		ONE_MINUS_CONSTANT_ALPHA = 0x8004;
		BLEND_COLOR = 0x8005;
		ARRAY_BUFFER = 0x8892;
		ELEMENT_ARRAY_BUFFER = 0x8893;
		ARRAY_BUFFER_BINDING = 0x8894;
		ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;
		STREAM_DRAW = 0x88E0;
		STATIC_DRAW = 0x88E4;
		DYNAMIC_DRAW = 0x88E8;
		BUFFER_SIZE = 0x8764;
		BUFFER_USAGE = 0x8765;
		CURRENT_VERTEX_ATTRIB = 0x8626;
		FRONT = 0x0404;
		BACK = 0x0405;
		FRONT_AND_BACK = 0x0408;
		CULL_FACE = 0x0B44;
		BLEND = 0x0BE2;
		DITHER = 0x0BD0;
		STENCIL_TEST = 0x0B90;
		DEPTH_TEST = 0x0B71;
		SCISSOR_TEST = 0x0C11;
		POLYGON_OFFSET_FILL = 0x8037;
		SAMPLE_ALPHA_TO_COVERAGE = 0x809E;
		SAMPLE_COVERAGE = 0x80A0;
		NO_ERROR = 0;
		INVALID_ENUM = 0x0500;
		INVALID_VALUE = 0x0501;
		INVALID_OPERATION = 0x0502;
		OUT_OF_MEMORY = 0x0505;
		CW = 0x0900;
		CCW = 0x0901;
		LINE_WIDTH = 0x0B21;
		ALIASED_POINT_SIZE_RANGE = 0x846D;
		ALIASED_LINE_WIDTH_RANGE = 0x846E;
		CULL_FACE_MODE = 0x0B45;
		FRONT_FACE = 0x0B46;
		DEPTH_RANGE = 0x0B70;
		DEPTH_WRITEMASK = 0x0B72;
		DEPTH_CLEAR_VALUE = 0x0B73;
		DEPTH_FUNC = 0x0B74;
		STENCIL_CLEAR_VALUE = 0x0B91;
		STENCIL_FUNC = 0x0B92;
		STENCIL_FAIL = 0x0B94;
		STENCIL_PASS_DEPTH_FAIL = 0x0B95;
		STENCIL_PASS_DEPTH_PASS = 0x0B96;
		STENCIL_REF = 0x0B97;
		STENCIL_VALUE_MASK = 0x0B93;
		STENCIL_WRITEMASK = 0x0B98;
		STENCIL_BACK_FUNC = 0x8800;
		STENCIL_BACK_FAIL = 0x8801;
		STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;
		STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;
		STENCIL_BACK_REF = 0x8CA3;
		STENCIL_BACK_VALUE_MASK = 0x8CA4;
		STENCIL_BACK_WRITEMASK = 0x8CA5;
		VIEWPORT = 0x0BA2;
		SCISSOR_BOX = 0x0C10;
		COLOR_CLEAR_VALUE = 0x0C22;
		COLOR_WRITEMASK = 0x0C23;
		UNPACK_ALIGNMENT = 0x0CF5;
		PACK_ALIGNMENT = 0x0D05;
		MAX_TEXTURE_SIZE = 0x0D33;
		MAX_VIEWPORT_DIMS = 0x0D3A;
		SUBPIXEL_BITS = 0x0D50;
		RED_BITS = 0x0D52;
		GREEN_BITS = 0x0D53;
		BLUE_BITS = 0x0D54;
		ALPHA_BITS = 0x0D55;
		DEPTH_BITS = 0x0D56;
		STENCIL_BITS = 0x0D57;
		POLYGON_OFFSET_UNITS = 0x2A00;
		POLYGON_OFFSET_FACTOR = 0x8038;
		TEXTURE_BINDING_2D = 0x8069;
		SAMPLE_BUFFERS = 0x80A8;
		SAMPLES = 0x80A9;
		SAMPLE_COVERAGE_VALUE = 0x80AA;
		SAMPLE_COVERAGE_INVERT = 0x80AB;
		NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2;
		COMPRESSED_TEXTURE_FORMATS = 0x86A3;
		DONT_CARE = 0x1100;
		FASTEST = 0x1101;
		NICEST = 0x1102;
		GENERATE_MIPMAP_HINT = 0x8192;
		BYTE = 0x1400;
		UNSIGNED_BYTE = 0x1401;
		SHORT = 0x1402;
		UNSIGNED_SHORT = 0x1403;
		INT = 0x1404;
		UNSIGNED_INT = 0x1405;
		FLOAT = 0x1406;
		DEPTH_COMPONENT = 0x1902;
		ALPHA = 0x1906;
		RGB = 0x1907;
		RGBA = 0x1908;
		LUMINANCE = 0x1909;
		LUMINANCE_ALPHA = 0x190A;
		UNSIGNED_SHORT_4_4_4_4 = 0x8033;
		UNSIGNED_SHORT_5_5_5_1 = 0x8034;
		UNSIGNED_SHORT_5_6_5 = 0x8363;
		FRAGMENT_SHADER = 0x8B30;
		VERTEX_SHADER = 0x8B31;
		MAX_VERTEX_ATTRIBS = 0x8869;
		MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;
		MAX_VARYING_VECTORS = 0x8DFC;
		MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;
		MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;
		MAX_TEXTURE_IMAGE_UNITS = 0x8872;
		MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;
		SHADER_TYPE = 0x8B4F;
		DELETE_STATUS = 0x8B80;
		LINK_STATUS = 0x8B82;
		VALIDATE_STATUS = 0x8B83;
		ATTACHED_SHADERS = 0x8B85;
		ACTIVE_UNIFORMS = 0x8B86;
		ACTIVE_ATTRIBUTES = 0x8B89;
		SHADING_LANGUAGE_VERSION = 0x8B8C;
		CURRENT_PROGRAM = 0x8B8D;
		NEVER = 0x0200;
		LESS = 0x0201;
		EQUAL = 0x0202;
		LEQUAL = 0x0203;
		GREATER = 0x0204;
		NOTEQUAL = 0x0205;
		GEQUAL = 0x0206;
		ALWAYS = 0x0207;
		KEEP = 0x1E00;
		REPLACE = 0x1E01;
		INCR = 0x1E02;
		DECR = 0x1E03;
		INVERT = 0x150A;
		INCR_WRAP = 0x8507;
		DECR_WRAP = 0x8508;
		VENDOR = 0x1F00;
		RENDERER = 0x1F01;
		VERSION = 0x1F02;
		NEAREST = 0x2600;
		LINEAR = 0x2601;
		NEAREST_MIPMAP_NEAREST = 0x2700;
		LINEAR_MIPMAP_NEAREST = 0x2701;
		NEAREST_MIPMAP_LINEAR = 0x2702;
		LINEAR_MIPMAP_LINEAR = 0x2703;
		TEXTURE_MAG_FILTER = 0x2800;
		TEXTURE_MIN_FILTER = 0x2801;
		TEXTURE_WRAP_S = 0x2802;
		TEXTURE_WRAP_T = 0x2803;
		TEXTURE_2D = 0x0DE1;
		TEXTURE = 0x1702;
		TEXTURE_CUBE_MAP = 0x8513;
		TEXTURE_BINDING_CUBE_MAP = 0x8514;
		TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;
		TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;
		TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;
		TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;
		TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;
		TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;
		MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;
		TEXTURE0 = 0x84C0;
		TEXTURE1 = 0x84C1;
		TEXTURE2 = 0x84C2;
		TEXTURE3 = 0x84C3;
		TEXTURE4 = 0x84C4;
		TEXTURE5 = 0x84C5;
		TEXTURE6 = 0x84C6;
		TEXTURE7 = 0x84C7;
		TEXTURE8 = 0x84C8;
		TEXTURE9 = 0x84C9;
		TEXTURE10 = 0x84CA;
		TEXTURE11 = 0x84CB;
		TEXTURE12 = 0x84CC;
		TEXTURE13 = 0x84CD;
		TEXTURE14 = 0x84CE;
		TEXTURE15 = 0x84CF;
		TEXTURE16 = 0x84D0;
		TEXTURE17 = 0x84D1;
		TEXTURE18 = 0x84D2;
		TEXTURE19 = 0x84D3;
		TEXTURE20 = 0x84D4;
		TEXTURE21 = 0x84D5;
		TEXTURE22 = 0x84D6;
		TEXTURE23 = 0x84D7;
		TEXTURE24 = 0x84D8;
		TEXTURE25 = 0x84D9;
		TEXTURE26 = 0x84DA;
		TEXTURE27 = 0x84DB;
		TEXTURE28 = 0x84DC;
		TEXTURE29 = 0x84DD;
		TEXTURE30 = 0x84DE;
		TEXTURE31 = 0x84DF;
		ACTIVE_TEXTURE = 0x84E0;
		REPEAT = 0x2901;
		CLAMP_TO_EDGE = 0x812F;
		MIRRORED_REPEAT = 0x8370;
		FLOAT_VEC2 = 0x8B50;
		FLOAT_VEC3 = 0x8B51;
		FLOAT_VEC4 = 0x8B52;
		INT_VEC2 = 0x8B53;
		INT_VEC3 = 0x8B54;
		INT_VEC4 = 0x8B55;
		BOOL = 0x8B56;
		BOOL_VEC2 = 0x8B57;
		BOOL_VEC3 = 0x8B58;
		BOOL_VEC4 = 0x8B59;
		FLOAT_MAT2 = 0x8B5A;
		FLOAT_MAT3 = 0x8B5B;
		FLOAT_MAT4 = 0x8B5C;
		SAMPLER_2D = 0x8B5E;
		SAMPLER_CUBE = 0x8B60;
		VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;
		VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;
		VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;
		VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;
		VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;
		VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;
		VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;
		COMPILE_STATUS = 0x8B81;
		LOW_FLOAT = 0x8DF0;
		MEDIUM_FLOAT = 0x8DF1;
		HIGH_FLOAT = 0x8DF2;
		LOW_INT = 0x8DF3;
		MEDIUM_INT = 0x8DF4;
		HIGH_INT = 0x8DF5;
		FRAMEBUFFER = 0x8D40;
		RENDERBUFFER = 0x8D41;
		RGBA4 = 0x8056;
		RGB5_A1 = 0x8057;
		RGB565 = 0x8D62;
		DEPTH_COMPONENT16 = 0x81A5;
		STENCIL_INDEX = 0x1901;
		STENCIL_INDEX8 = 0x8D48;
		DEPTH_STENCIL = 0x84F9;
		RENDERBUFFER_WIDTH = 0x8D42;
		RENDERBUFFER_HEIGHT = 0x8D43;
		RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;
		RENDERBUFFER_RED_SIZE = 0x8D50;
		RENDERBUFFER_GREEN_SIZE = 0x8D51;
		RENDERBUFFER_BLUE_SIZE = 0x8D52;
		RENDERBUFFER_ALPHA_SIZE = 0x8D53;
		RENDERBUFFER_DEPTH_SIZE = 0x8D54;
		RENDERBUFFER_STENCIL_SIZE = 0x8D55;
		FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;
		FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;
		FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;
		FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;
		COLOR_ATTACHMENT0 = 0x8CE0;
		DEPTH_ATTACHMENT = 0x8D00;
		STENCIL_ATTACHMENT = 0x8D20;
		DEPTH_STENCIL_ATTACHMENT = 0x821A;
		NONE = 0;
		FRAMEBUFFER_COMPLETE = 0x8CD5;
		FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;
		FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;
		FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;
		FRAMEBUFFER_UNSUPPORTED = 0x8CDD;
		FRAMEBUFFER_BINDING = 0x8CA6;
		RENDERBUFFER_BINDING = 0x8CA7;
		MAX_RENDERBUFFER_SIZE = 0x84E8;
		INVALID_FRAMEBUFFER_OPERATION = 0x0506;
	}
	public function viewport ( x:Int, y:Int, width:Int, height:Int ):Void _viewport ( x, y, width, height )
	public function clearColor ( red:Float, green:Float, blue:Float, alpha:Float ):Void _clearColor ( red, green, blue, alpha )
	public function clear ( flags:Int ):Void _clear ( flags )
	public function enable ( flag:GLEnum ):Void _enable ( flag )
	public function disable ( flag:GLEnum ):Void _disable ( flag )
	public function clearDepth ( depth:Float ):Void _clearDepth ( depth )
	public function createBuffer ():Buffer _createBuffer ()
	public function bindBuffer ( target:GLEnum, buffer:Buffer ):Void _bindBuffer ( target, buffer )
	public function bufferData ( target:GLEnum, size:Int, type:GLEnum ):Void _bufferData ( target, size, type )
	public function bufferSubData ( target:GLEnum, offset:Int, data:View ):Void _bufferSubData ( target, offset, data )
	public function drawElements ( target:GLEnum, num:Int, type:GLEnum, offset:Int ):Void _drawElements ( target, num, type, offset )
	public function createProgram (  ):Program return _createProgram (  )
	public function createShader ( type:Int ):Shader return _createShader ( type )
	public function shaderSource ( shader:Shader, code:String ):Void _shaderSource ( shader, code )
	public function compileShader ( shader:Shader ):Void _compileShader ( shader )
	public function getShaderParameter ( shader:Shader, param:GLEnum ):Dynamic return _getShaderParameter ( shader, param )
	public function deleteShader ( shader:Shader ):Void _deleteShader ( shader )
	public function attachShader ( program:Program, shader:Shader ):Void _attachShader ( program, shader )
	public function linkProgram ( program:Program ):Void _linkProgram ( program )
	public function getProgramParameter ( program:Program, param:GLEnum ):Dynamic return _getProgramParameter ( program, param )
	public function deleteProgram ( program:Program ):Void _deleteProgram ( program )
	public function useProgram ( program:Program ):Void _useProgram ( program )
	public function getAttribLocation ( program:Program, location:String ):Dynamic return _getAttribLocation ( program, location )
	public function disableVertexAttribArray ( locindex:Dynamic ):Void _disableVertexAttribArray ( locindex )
	public function enableVertexAttribArray ( locindex:Dynamic ):Void _enableVertexAttribArray ( locindex )
	public function vertexAttribPointer ( locindex:Dynamic, size:Int, type:GLEnum, normalize:Bool, stride:Int, bufferOffset:Int ):Void _vertexAttribPointer ( locindex, size, type, normalize, stride, bufferOffset )
	public function cullFace ( flag:GLEnum ):Void _cullFace ( flag )
	public function depthMask ( status:Bool ):Void _depthMask ( status )
	public function depthFunc ( flag:GLEnum ):Void _depthFunc ( flag )
	public function createTexture (  ):Texture return _createTexture (  )
	public function bindTexture ( target:GLEnum, texture:Texture ):Void _bindTexture ( target, texture )
	public function texParameteri ( target:GLEnum, a:GLEnum, b:GLEnum ):Void _texParameteri ( target, a, b )
	public var DEPTH_BUFFER_BIT:Int;
	public var STENCIL_BUFFER_BIT:Int;
	public var COLOR_BUFFER_BIT:Int;
	public var POINTS:Int;
	public var LINES:Int;
	public var LINE_LOOP:Int;
	public var LINE_STRIP:Int;
	public var TRIANGLES:Int;
	public var TRIANGLE_STRIP:Int;
	public var TRIANGLE_FAN:Int;
	public var ZERO:Int;
	public var ONE:Int;
	public var SRC_COLOR:Int;
	public var ONE_MINUS_SRC_COLOR:Int;
	public var SRC_ALPHA:Int;
	public var ONE_MINUS_SRC_ALPHA:Int;
	public var DST_ALPHA:Int;
	public var ONE_MINUS_DST_ALPHA:Int;
	public var DST_COLOR:Int;
	public var ONE_MINUS_DST_COLOR:Int;
	public var SRC_ALPHA_SATURATE:Int;
	public var FUNC_ADD:Int;
	public var BLEND_EQUATION:Int;
	public var BLEND_EQUATION_RGB:Int;
	public var BLEND_EQUATION_ALPHA:Int;
	public var FUNC_SUBTRACT:Int;
	public var FUNC_REVERSE_SUBTRACT:Int;
	public var BLEND_DST_RGB:Int;
	public var BLEND_SRC_RGB:Int;
	public var BLEND_DST_ALPHA:Int;
	public var BLEND_SRC_ALPHA:Int;
	public var CONSTANT_COLOR:Int;
	public var ONE_MINUS_CONSTANT_COLOR:Int;
	public var CONSTANT_ALPHA:Int;
	public var ONE_MINUS_CONSTANT_ALPHA:Int;
	public var BLEND_COLOR:Int;
	public var ARRAY_BUFFER:Int;
	public var ELEMENT_ARRAY_BUFFER:Int;
	public var ARRAY_BUFFER_BINDING:Int;
	public var ELEMENT_ARRAY_BUFFER_BINDING:Int;
	public var STREAM_DRAW:Int;
	public var STATIC_DRAW:Int;
	public var DYNAMIC_DRAW:Int;
	public var BUFFER_SIZE:Int;
	public var BUFFER_USAGE:Int;
	public var CURRENT_VERTEX_ATTRIB:Int;
	public var FRONT:Int;
	public var BACK:Int;
	public var FRONT_AND_BACK:Int;
	public var CULL_FACE:Int;
	public var BLEND:Int;
	public var DITHER:Int;
	public var STENCIL_TEST:Int;
	public var DEPTH_TEST:Int;
	public var SCISSOR_TEST:Int;
	public var POLYGON_OFFSET_FILL:Int;
	public var SAMPLE_ALPHA_TO_COVERAGE:Int;
	public var SAMPLE_COVERAGE:Int;
	public var NO_ERROR:Int;
	public var INVALID_ENUM:Int;
	public var INVALID_VALUE:Int;
	public var INVALID_OPERATION:Int;
	public var OUT_OF_MEMORY:Int;
	public var CW:Int;
	public var CCW:Int;
	public var LINE_WIDTH:Int;
	public var ALIASED_POINT_SIZE_RANGE:Int;
	public var ALIASED_LINE_WIDTH_RANGE:Int;
	public var CULL_FACE_MODE:Int;
	public var FRONT_FACE:Int;
	public var DEPTH_RANGE:Int;
	public var DEPTH_WRITEMASK:Int;
	public var DEPTH_CLEAR_VALUE:Int;
	public var DEPTH_FUNC:Int;
	public var STENCIL_CLEAR_VALUE:Int;
	public var STENCIL_FUNC:Int;
	public var STENCIL_FAIL:Int;
	public var STENCIL_PASS_DEPTH_FAIL:Int;
	public var STENCIL_PASS_DEPTH_PASS:Int;
	public var STENCIL_REF:Int;
	public var STENCIL_VALUE_MASK:Int;
	public var STENCIL_WRITEMASK:Int;
	public var STENCIL_BACK_FUNC:Int;
	public var STENCIL_BACK_FAIL:Int;
	public var STENCIL_BACK_PASS_DEPTH_FAIL:Int;
	public var STENCIL_BACK_PASS_DEPTH_PASS:Int;
	public var STENCIL_BACK_REF:Int;
	public var STENCIL_BACK_VALUE_MASK:Int;
	public var STENCIL_BACK_WRITEMASK:Int;
	public var VIEWPORT:Int;
	public var SCISSOR_BOX:Int;
	public var COLOR_CLEAR_VALUE:Int;
	public var COLOR_WRITEMASK:Int;
	public var UNPACK_ALIGNMENT:Int;
	public var PACK_ALIGNMENT:Int;
	public var MAX_TEXTURE_SIZE:Int;
	public var MAX_VIEWPORT_DIMS:Int;
	public var SUBPIXEL_BITS:Int;
	public var RED_BITS:Int;
	public var GREEN_BITS:Int;
	public var BLUE_BITS:Int;
	public var ALPHA_BITS:Int;
	public var DEPTH_BITS:Int;
	public var STENCIL_BITS:Int;
	public var POLYGON_OFFSET_UNITS:Int;
	public var POLYGON_OFFSET_FACTOR:Int;
	public var TEXTURE_BINDING_2D:Int;
	public var SAMPLE_BUFFERS:Int;
	public var SAMPLES:Int;
	public var SAMPLE_COVERAGE_VALUE:Int;
	public var SAMPLE_COVERAGE_INVERT:Int;
	public var NUM_COMPRESSED_TEXTURE_FORMATS:Int;
	public var COMPRESSED_TEXTURE_FORMATS:Int;
	public var DONT_CARE:Int;
	public var FASTEST:Int;
	public var NICEST:Int;
	public var GENERATE_MIPMAP_HINT:Int;
	public var BYTE:Int;
	public var UNSIGNED_BYTE:Int;
	public var SHORT:Int;
	public var UNSIGNED_SHORT:Int;
	public var INT:Int;
	public var UNSIGNED_INT:Int;
	public var FLOAT:Int;
	public var DEPTH_COMPONENT:Int;
	public var ALPHA:Int;
	public var RGB:Int;
	public var RGBA:Int;
	public var LUMINANCE:Int;
	public var LUMINANCE_ALPHA:Int;
	public var UNSIGNED_SHORT_4_4_4_4:Int;
	public var UNSIGNED_SHORT_5_5_5_1:Int;
	public var UNSIGNED_SHORT_5_6_5:Int;
	public var FRAGMENT_SHADER:Int;
	public var VERTEX_SHADER:Int;
	public var MAX_VERTEX_ATTRIBS:Int;
	public var MAX_VERTEX_UNIFORM_VECTORS:Int;
	public var MAX_VARYING_VECTORS:Int;
	public var MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int;
	public var MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int;
	public var MAX_TEXTURE_IMAGE_UNITS:Int;
	public var MAX_FRAGMENT_UNIFORM_VECTORS:Int;
	public var SHADER_TYPE:Int;
	public var DELETE_STATUS:Int;
	public var LINK_STATUS:Int;
	public var VALIDATE_STATUS:Int;
	public var ATTACHED_SHADERS:Int;
	public var ACTIVE_UNIFORMS:Int;
	public var ACTIVE_ATTRIBUTES:Int;
	public var SHADING_LANGUAGE_VERSION:Int;
	public var CURRENT_PROGRAM:Int;
	public var NEVER:Int;
	public var LESS:Int;
	public var EQUAL:Int;
	public var LEQUAL:Int;
	public var GREATER:Int;
	public var NOTEQUAL:Int;
	public var GEQUAL:Int;
	public var ALWAYS:Int;
	public var KEEP:Int;
	public var REPLACE:Int;
	public var INCR:Int;
	public var DECR:Int;
	public var INVERT:Int;
	public var INCR_WRAP:Int;
	public var DECR_WRAP:Int;
	public var VENDOR:Int;
	public var RENDERER:Int;
	public var VERSION:Int;
	public var NEAREST:Int;
	public var LINEAR:Int;
	public var NEAREST_MIPMAP_NEAREST:Int;
	public var LINEAR_MIPMAP_NEAREST:Int;
	public var NEAREST_MIPMAP_LINEAR:Int;
	public var LINEAR_MIPMAP_LINEAR:Int;
	public var TEXTURE_MAG_FILTER:Int;
	public var TEXTURE_MIN_FILTER:Int;
	public var TEXTURE_WRAP_S:Int;
	public var TEXTURE_WRAP_T:Int;
	public var TEXTURE_2D:Int;
	public var TEXTURE:Int;
	public var TEXTURE_CUBE_MAP:Int;
	public var TEXTURE_BINDING_CUBE_MAP:Int;
	public var TEXTURE_CUBE_MAP_POSITIVE_X:Int;
	public var TEXTURE_CUBE_MAP_NEGATIVE_X:Int;
	public var TEXTURE_CUBE_MAP_POSITIVE_Y:Int;
	public var TEXTURE_CUBE_MAP_NEGATIVE_Y:Int;
	public var TEXTURE_CUBE_MAP_POSITIVE_Z:Int;
	public var TEXTURE_CUBE_MAP_NEGATIVE_Z:Int;
	public var MAX_CUBE_MAP_TEXTURE_SIZE:Int;
	public var TEXTURE0:Int;
	public var TEXTURE1:Int;
	public var TEXTURE2:Int;
	public var TEXTURE3:Int;
	public var TEXTURE4:Int;
	public var TEXTURE5:Int;
	public var TEXTURE6:Int;
	public var TEXTURE7:Int;
	public var TEXTURE8:Int;
	public var TEXTURE9:Int;
	public var TEXTURE10:Int;
	public var TEXTURE11:Int;
	public var TEXTURE12:Int;
	public var TEXTURE13:Int;
	public var TEXTURE14:Int;
	public var TEXTURE15:Int;
	public var TEXTURE16:Int;
	public var TEXTURE17:Int;
	public var TEXTURE18:Int;
	public var TEXTURE19:Int;
	public var TEXTURE20:Int;
	public var TEXTURE21:Int;
	public var TEXTURE22:Int;
	public var TEXTURE23:Int;
	public var TEXTURE24:Int;
	public var TEXTURE25:Int;
	public var TEXTURE26:Int;
	public var TEXTURE27:Int;
	public var TEXTURE28:Int;
	public var TEXTURE29:Int;
	public var TEXTURE30:Int;
	public var TEXTURE31:Int;
	public var ACTIVE_TEXTURE:Int;
	public var REPEAT:Int;
	public var CLAMP_TO_EDGE:Int;
	public var MIRRORED_REPEAT:Int;
	public var FLOAT_VEC2:Int;
	public var FLOAT_VEC3:Int;
	public var FLOAT_VEC4:Int;
	public var INT_VEC2:Int;
	public var INT_VEC3:Int;
	public var INT_VEC4:Int;
	public var BOOL:Int;
	public var BOOL_VEC2:Int;
	public var BOOL_VEC3:Int;
	public var BOOL_VEC4:Int;
	public var FLOAT_MAT2:Int;
	public var FLOAT_MAT3:Int;
	public var FLOAT_MAT4:Int;
	public var SAMPLER_2D:Int;
	public var SAMPLER_CUBE:Int;
	public var VERTEX_ATTRIB_ARRAY_ENABLED:Int;
	public var VERTEX_ATTRIB_ARRAY_SIZE:Int;
	public var VERTEX_ATTRIB_ARRAY_STRIDE:Int;
	public var VERTEX_ATTRIB_ARRAY_TYPE:Int;
	public var VERTEX_ATTRIB_ARRAY_NORMALIZED:Int;
	public var VERTEX_ATTRIB_ARRAY_POINTER:Int;
	public var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int;
	public var COMPILE_STATUS:Int;
	public var LOW_FLOAT:Int;
	public var MEDIUM_FLOAT:Int;
	public var HIGH_FLOAT:Int;
	public var LOW_INT:Int;
	public var MEDIUM_INT:Int;
	public var HIGH_INT:Int;
	public var FRAMEBUFFER:Int;
	public var RENDERBUFFER:Int;
	public var RGBA4:Int;
	public var RGB5_A1:Int;
	public var RGB565:Int;
	public var DEPTH_COMPONENT16:Int;
	public var STENCIL_INDEX:Int;
	public var STENCIL_INDEX8:Int;
	public var DEPTH_STENCIL:Int;
	public var RENDERBUFFER_WIDTH:Int;
	public var RENDERBUFFER_HEIGHT:Int;
	public var RENDERBUFFER_INTERNAL_FORMAT:Int;
	public var RENDERBUFFER_RED_SIZE:Int;
	public var RENDERBUFFER_GREEN_SIZE:Int;
	public var RENDERBUFFER_BLUE_SIZE:Int;
	public var RENDERBUFFER_ALPHA_SIZE:Int;
	public var RENDERBUFFER_DEPTH_SIZE:Int;
	public var RENDERBUFFER_STENCIL_SIZE:Int;
	public var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int;
	public var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int;
	public var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int;
	public var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int;
	public var COLOR_ATTACHMENT0:Int;
	public var DEPTH_ATTACHMENT:Int;
	public var STENCIL_ATTACHMENT:Int;
	public var DEPTH_STENCIL_ATTACHMENT:Int;
	public var NONE:Int;
	public var FRAMEBUFFER_COMPLETE:Int;
	public var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int;
	public var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int;
	public var FRAMEBUFFER_INCOMPLETE_DIMENSIONS:Int;
	public var FRAMEBUFFER_UNSUPPORTED:Int;
	public var FRAMEBUFFER_BINDING:Int;
	public var RENDERBUFFER_BINDING:Int;
	public var MAX_RENDERBUFFER_SIZE:Int;
	public var INVALID_FRAMEBUFFER_OPERATION:Int;
	static var _viewport:Dynamic = l( 'viewport', 4 );
	static var _clearColor:Dynamic = l( 'clearColor', 4 );
	static var _clear:Dynamic = l( 'clear', 1 );
	static var _enable:Dynamic = l( 'enable', 1 );
	static var _disable:Dynamic = l( 'disable', 1 );
	static var _clearDepth:Dynamic = l( 'clearDepth', 1 );
	static var _createBuffer:Dynamic = l( 'createBuffer', 0 );
	static var _bindBuffer:Dynamic = l( 'bindBuffer', 2 );
	static var _bufferData:Dynamic = l( 'bufferData', 4 );
	static var _bufferSubData:Dynamic = l( 'bufferSubData', 4 );
	static var _drawElements:Dynamic = l( 'drawElements', 4 );
	static var _createProgram:Dynamic = l( 'createProgram', 0 );
	static var _createShader:Dynamic = l( 'createShader', 1 );
	static var _shaderSource:Dynamic = l( 'shaderSource', 2 );
	static var _compileShader:Dynamic = l( 'compileShader', 1 );
	static var _getShaderParameter:Dynamic = l( 'getShaderParameter', 2 );
	static var _deleteShader:Dynamic = l( 'deleteShader', 1 );
	static var _attachShader:Dynamic = l( 'attachShader', 2 );
	static var _linkProgram:Dynamic = l( 'linkProgram', 1 );
	static var _getProgramParameter:Dynamic = l( 'getProgramParameter', 2 );
	static var _deleteProgram:Dynamic = l( 'deleteProgram', 1 );
	static var _useProgram:Dynamic = l( 'useProgram', 1 );
	static var _getAttribLocation:Dynamic = l( 'getAttribLocation', 2 );
	static var _disableVertexAttribArray:Dynamic = l( 'disableVertexAttribArray', 1 );
	static var _enableVertexAttribArray:Dynamic = l( 'enableVertexAttribArray', 1 );
	static var _vertexAttribPointer:Dynamic = l( 'vertexAttribPointer', 6 );
	static var _cullFace:Dynamic = l( 'cullFace', 1 );
	static var _depthMask:Dynamic = l( 'depthMask', 1 );
	static var _depthFunc:Dynamic = l( 'depthFunc', 1 );
	static var _createTexture:Dynamic = l( 'createTexture', 0 );
	static var _bindTexture:Dynamic = l( 'bindTexture', 2 );
	static var _texParameteri:Dynamic = l( 'texParameteri', 3 );
	static function l( id:String, p:Int ) return cpp.Lib.load( 'gl', id, p )
}
#end

//@@ EXTRA
typedef View = Dynamic;
typedef Program = Dynamic;
typedef Shader = Dynamic;
typedef Buffer = Dynamic;
typedef GLEnum = Dynamic;
typedef Texture = Dynamic;
