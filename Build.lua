include "Dependencies.lua"

-- premake5.lua
workspace "SpaceRiskRemake"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "SpaceRiskRemake"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Dependencies"
   include "Core/Vendors/glfw/include"
   include "Core/Vendors/glad/include"
   include "Core/Vendors/imgui"
   include "Core/Vendors/spdlog/include"
   include "Core/Vendors/freetype/include"
   
group ""

group "Core"
	include "Core/Build-Core.lua"
group ""

include "SpaceRiskRemake/Build-SpaceRiskRemake.lua"