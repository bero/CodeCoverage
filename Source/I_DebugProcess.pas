(**************************************************************)
(* Delphi Code Coverage                                       *)
(*                                                            *)
(* A quick hack of a Code Coverage Tool for Delphi 2010       *)
(* by Christer Fahlgren and Nick Ring                         *)
(**************************************************************)
(* Licensed under Mozilla Public License 1.1                  *)
(**************************************************************)

unit I_DebugProcess;

interface

uses
  Windows,
  I_DebugThread,
  I_DebugModule;

type
  IDebugProcess = interface (IDebugModule)
    procedure AddThread(const ADebugThread: IDebugThread);
    procedure RemoveThread(const AThreadId: DWORD);

    procedure AddModule(const AModule: IDebugModule);
    procedure RemoveModule(const AModule: IDebugModule);
    function GetModule(const AName: string): IDebugModule;


    function Handle: THandle;
    function FindDebugModuleFromAddress(Addr: Pointer): IDebugModule;
    function GetThreadById(const AThreadId: DWORD): IDebugThread;
    function ReadProcessMemory(
      const AAddress, AData: Pointer;
      const ASize: Cardinal;
      const AChangeProtect: Boolean = False): Integer;
    function WriteProcessMemory(
      const AAddress, AData: Pointer;
      const ASize: Cardinal;
      const AChangeProtect: Boolean = False): Integer;
  end;

implementation

end.
