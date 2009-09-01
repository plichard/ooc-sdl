use sdl

import lang.String

SDL: cover {
	
	init: extern(SDL_Init) static func(UInt32) -> Int
	initSubSystem: extern(SDL_InitSubSystem) static func(UInt32) -> Int
	quitSubSystem: extern(SDL_QuitSubSystem) static func(UInt32)
	quit: extern(SDL_Quit) static func()
	wasInit: extern (SDL_WasInit) static func(UInt32) -> Int
	getError: extern(SDL_GetError) static func() -> String
	setError: extern(SDL_SetError) static func (const String, ...)
	//error: extern(SDL_Error) static func (extern(SDL_errorcode))
	clearError: extern(SDL_ClearError) static func()
	loadObject: extern(SDL_LoadObject) static func(const String) -> Void*
	loadFunction: extern(SDL_LoadFunction) static func(Void* , const String) -> Void*
	unloadObject: extern(SDL_UnloadObject) static func(Void*)
	//linkedVersion: extern(SDL_Linked_Version) static func() -> const SDL_version*

}
