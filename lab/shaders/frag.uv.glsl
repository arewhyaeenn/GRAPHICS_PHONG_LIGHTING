precision mediump float;

// data type definitions
struct DirectionalLight
{
	vec3 direction; // xyz direction of light
	vec3 ambient; // rgb contribution to scene ambient light
	vec3 diffuse; // rgb intensity of diffuse 
	vec3 specular; // rgb intensity of specular
};

struct PointLight
{
	vec3 position; // xyz position of source
	vec3 ambient; // rgb contribution to scene ambient light
	vec3 diffuse; // rgb intensity of diffuse
	vec3 specular; // rgb intensity of specular
};

struct Material
{
	float diffuse; // diffuse reflection constant
	float specular; // specular reflection constant
	float ambient; // ambient reflection constant
	float shininess; // shininess constant
};

struct Camera
{
	vec3 position;
	mat4 mProjView;
};

// lights
uniform vec3 ambientLight;
uniform DirectionalLight directionalLights[16];
uniform PointLight pointLights[16];

// material
uniform Material material;

// camera
uniform Camera cam;

// surface
varying vec3 fragPosition;
varying vec3 fragNormal;

// texture
varying vec2 fragTexCoord;
uniform sampler2D sampler;

void main()
{
	vec4 texel = texture2D(sampler, fragTexCoord);

	// TODO calculate illumination (I in the cheatsheet)
	vec3 illumination;

	// TODO calculate gl_FragColor using illumination and texel color
	//gl_FragColor = ...
}