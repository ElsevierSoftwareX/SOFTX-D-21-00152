unit CLIPSHeader;

interface

uses
    CLIPSSupport;
    
{ Interface for Clips DLL }
const
     DLLName = './/dll//003.dll';

function  AddAssertFunction( AssertItemName: PAnsiChar; AssertFunction: Pointer;
          Priority: LongInt ): Boolean;           cdecl; external DLLName name 'AddAssertFunction';
function  AddRetractFunction( RetractItemName: PAnsiChar; RetractFunction: Pointer;
          Priority: LongInt ): Boolean;           cdecl; external DLLName name 'AddRetractFunction';
function  RemoveAssertFunction( AssertItemName: PAnsiChar ): Boolean;
                                                  cdecl; external DLLName name 'RemoveAssertFunction';
function  RemoveRetractFunction( RetractItemName: PAnsiChar ): Boolean;
                                                  cdecl; external DLLName name 'RemoveAssertFunction';

{ Environment Functions }

function  AddClearFunction( ClearItemName: PAnsiChar; ClearFunction: Pointer;
          Priority: LongInt ): Boolean;           cdecl; external DLLName name 'AddClearFunction';
function  AddPeriodicFunction( PeriodicItemName: PAnsiChar; PeriodicFunction: Pointer;
          Priority: LongInt ): Boolean;           cdecl; external DLLName name 'AddPeriodicFunction';
function  AddResetFunction( ResetItemName: PAnsiChar; ResetFunction: Pointer;
          Priority: LongInt ): Boolean;           cdecl; external DLLName name 'AddResetFunction';
function  Bload( Filename: PAnsiChar ): Boolean;      cdecl; external DLLName name 'Bload';
function  Bsave( Filename: PAnsiChar ): Boolean;      cdecl; external DLLName name 'Bsave';
procedure Clear;                                  cdecl; external DLLName name 'Clear';
{ function CLIPSFunctionCall }
function  GetAutoFloatDividend: Boolean;          cdecl; external DLLName name 'GetAutoFloatDividend';
function  GetDynamicConstraintChecking: Boolean;  cdecl; external DLLName name 'GetDynamicConstraintChecking';
function  GetSequenceOperatorRecognition: Boolean;cdecl; external DLLName name 'GetSequenceOperatorRecognition';
function  GetStaticConstraintChecking: Boolean;   cdecl; external DLLName name 'GetStaticConstraintChecking';
procedure InitializeCLIPS;                        cdecl; external DLLName name 'InitializeCLIPS';
function  Load ( Filename: PAnsiChar ): LongInt;      cdecl; external DLLName name 'Load';
function  RemoveClearFunction( ClearItemName: PAnsiChar ): Boolean; cdecl; external DLLName name 'RemoveClearFunction';
function  RemovePeriodicFunction( PeriodicItemName: PAnsiChar ): Boolean; cdecl; external DLLName name 'RemovePeriodicFunction';
function  RemoveResetFunction( ResetItemName: PAnsiChar ): Boolean; cdecl; external DLLName name 'RemoveResetFunction';
procedure Reset;                                  cdecl; external DLLName name 'Reset';
function  Save ( Filename: PAnsiChar ): LongInt;      cdecl; external DLLName name 'Save';
function  SetAutoFloatDividend( Value: LongBool ): Boolean;
                                                  cdecl; external DLLName name 'SetAutoFloatDividend';
function  SetDynamicConstraintChecking( Value: LongBool ): Boolean;
                                                  cdecl; external DLLName name 'SetDynamicConstraintChecking';
function  SetSequenceOperatorRecognition( Value: LongBool ): Boolean;
                                                  cdecl; external DLLName name 'SetSequenceOperatorRecognition';
function  SetStaticConstraintChecking( Value: LongBool ): Boolean;
                                                  cdecl; external DLLName name 'SetStaticConstraintChecking';

{ Debugging Functions }

function  DribbleActive: Boolean;                 cdecl; external DLLName name 'DribbleActive';
function  DribbleOff: Boolean;                    cdecl; external DLLName name 'DribbleOff';
function  DribbleOn( Filename: PAnsiChar ): Boolean;  cdecl; external DLLName name 'DribbleOn';
function  GetWatchItem( Item: PAnsiChar ): Boolean;   cdecl; external DLLName name 'GetWatchItem';
function  Unwatch( Item: PAnsiChar ): Boolean;        cdecl; external DLLName name 'Unwatch';
function  Watch( Item: PAnsiChar ): Boolean;          cdecl; external DLLName name 'Watch';

{ Deftemplate Functions }

function  DeftemplateModule( DefTemplatePtr: Pointer ): PAnsiChar;
                                                  cdecl; external DLLName name 'DeftemplateModule';
function  FindDeftemplate( DefTemplateName: PAnsiChar ): Pointer;
                                                  cdecl; external DLLName name 'FindDeftemplate';
procedure GetDeftemplateList( ReturnValue: PClipsDataObject; TheModule: Pointer );
                                                  cdecl; external DLLName name 'GetDeftemplateList';
{function  GetDeftemplateName( DefTemplatePtr: Pointer ): PAnsiChar;
                                                  cdecl; external DLLName name 'GetDeftemplateName';
function  GetDeftemplatePPForm( DefTemplatePtr: Pointer ): PAnsiChar;
                                                  cdecl; external DLLName name 'GetDeftemplatePPForm';}
function  GetDeftemplateWatch( DefTemplatePtr: Pointer ): Boolean;
                                                  cdecl; external DLLName name 'GetDeftemplateWatch';
function  GetNextDeftemplate( DefTemplatePtr: Pointer ): Pointer;
                                                  cdecl; external DLLName name 'GetNextDeftemplate';
function  IsDeftemplateDeletable( DefTemplatePtr: Pointer ): Boolean;
                                                  cdecl; external DLLName name 'IsDeftemplateDeletable';
procedure ListDeftemplates( LogicalName: PAnsiChar; TheModule: Pointer );
                                                  cdecl; external DLLName name 'ListDeftemplates';
procedure SetDeftemplateWatch( NewState: Integer; DefTemplatePtr: Pointer );
                                                  cdecl; external DLLName name 'SetDeftemplateWatch';
function  UnDeftemplate( DefTemplatePtr: Pointer ): Boolean;
                                                  cdecl; external DLLName name 'UnDeftemplate';


{ Agenda Functions }

function  AddRunFunction( RunItemName: PAnsiChar; RunFunction: Pointer;
          Priority: LongInt ): Boolean;           cdecl; external DLLName name 'AddRunFunction';
procedure Agenda( LogicalName: PAnsiChar; TheModule: Pointer );
                                                  cdecl; external DLLName name 'Agenda';
procedure ClearFocusStack;                        cdecl; external DLLName name 'ClearFocusStack';
function  DeleteActivation( ActivationPtr: Pointer ): Boolean;
                                                  cdecl; external DLLName name 'DeleteActivation';
procedure Focus;                                  cdecl; external DLLName name 'Focus';
function  GetActivationName( ActivationPtr: Pointer ): PAnsiChar;
                                                  cdecl; external DLLName name 'GetActivationName';
procedure GetActivationPPForm( Buffer: PAnsiChar; BufferLength: LongInt; ActivationPtr: Pointer );
                                                  cdecl; external DLLName name 'GetActivationPPForm';
function  GetActivationSalience( ActivationPtr: Pointer ): LongInt;
                                                  cdecl; external DLLName name 'GetActivationSalience';
function  GetAgendaChanged: Boolean;              cdecl; external DLLName name 'GetAgendaChanged';
function  GetFocus: Pointer;                      cdecl; external DLLName name 'GetFocus';
{ procedure GetFocusStack }
function  GetNextActivation( ActivationPtr: Pointer ): Pointer;
                                                  cdecl; external DLLName name 'GetNextActivation';
function  GetSalienceEvaluation: LongInt;         cdecl; external DLLName name 'GetSalienceEvaluation';
function  GetStrategy: TClipsStrategy;            cdecl; external DLLName name 'GetStrategy';
procedure ListFocusStack( LogicalName: PAnsiChar );   cdecl; external DLLName name 'ListFocusStack';
function  PopFocus: Pointer;                      cdecl; external DLLName name 'PopFocus';
procedure RefreshAgenda( TheModule: Pointer );    cdecl; external DLLName name 'RefreshAgenda';
function  RemoveRunFunction( RunItemName: PAnsiChar ): Boolean;
                                                  cdecl; external DLLName name 'RemoveRunFunction';
procedure ReorderAgenda( TheModule: Pointer );    cdecl; external DLLName name 'ReorderAgenda';
function  Run( RunLimit: LongInt ): LongInt;      cdecl; external DLLName name 'Run';
function  SetActivationSalience( ActivationPtr: Pointer; NewSalience: LongInt ): LongInt;
                                                  cdecl; external DLLName name 'SetActivationSalience';
procedure SetAgendaChanged( ChangedFlag: LongBool ); cdecl; external DLLName name 'SetAgendaChanged';
function  SetSalienceEvaluation( Value: LongInt ): LongInt;
                                                  cdecl; external DLLName name 'SetSalienceEvaluation';
function  SetStrategy( Value: TClipsStrategy ): TClipsStrategy;
                                                  cdecl; external DLLName name 'SetStrategy';

{ Fact Functions }
function  Assert( FactPtr: Pointer ): Pointer;    cdecl; external DLLName name 'Assert';
function  AssertString( FactString: PAnsiChar ): Pointer;
                                                  cdecl; external DLLName name 'AssertString';
function  AssignFactSlotDefaults( FactPtr: Pointer ): Boolean;
                                                  cdecl; external DLLName name 'AssignFactSlotDefaults';
function  CreateFact( DefTemplatePtr: Pointer ): Pointer;
                                                  cdecl; external DLLName name 'CreateFact';
procedure DecrementFactCount( FactPtr: Pointer ); cdecl; external DLLName name 'DecrementFactCount';
function  FactIndex( FactPtr: Pointer ): LongInt; cdecl; external DLLName name 'FactIndex';
procedure Facts( LogicalName:PAnsiChar; TheModule:Pointer; TheStart, TheEnd, TheMax:LongInt );
                                                  cdecl; external DLLName name 'Facts';
function  GetFactDuplication: Boolean;            cdecl; external DLLName name 'GetFactDuplication';
function  GetFactListChanged: Boolean;            cdecl; external DLLName name 'GetFactListChanged';
//procedure GetFactPPForm( Buffer: PWideChar; BufferLength: LongInt; FactPtr: Pointer );
procedure GetFactPPForm( Buffer: PAnsiChar; BufferLength: LongInt; FactPtr: Pointer );
                                                  cdecl; external DLLName name 'GetFactPPForm';
function  GetFactSlot( FactPtr: Pointer; SlotName: PAnsiChar; TheValue: PClipsDataObject ): Boolean;
                                                  cdecl; external DLLName name 'GetFactSlot';
function  GetNextFact( FactPtr: Pointer ): Pointer;cdecl; external DLLName name 'GetNextFact';
procedure IncrementFactCount( FactPtr: Pointer ); cdecl; external DLLName name 'IncrementFactCount';
function  LoadFacts( Filename: PAnsiChar ): LongInt;  cdecl; external DLLName name 'LoadFacts';
function  PutFactSlot( FactPtr: Pointer; SlotName: PAnsiChar; TheValue: PClipsDataObject ): Boolean;
                                                  cdecl; external DLLName name 'PutFactSlot';
function  Retract( FactPtr: Pointer ): Boolean;   cdecl; external DLLName name 'Retract';
function  SaveFacts( Filename: PAnsiChar; SaveScope: LongInt; NilPtr: Pointer ): LongInt;
                                                  cdecl; external DLLName name 'SaveFacts';
function  SetFactDuplication( Value: LongBool ): Boolean;
                                                  cdecl; external DLLName name 'SetFactDuplication';
procedure SetFactListChanged( ChangedFlag: LongBool ); cdecl; external DLLName name 'SetFactListChanged';



//function GetDefRuleName( defrulePtr: Pointer ): PAnsiChar;  cdecl; external DLLName name 'GetDefruleName';
//function GetDefRulePPForm( defrulePtr: Pointer ): PAnsiChar;  cdecl; external DLLName name 'GetDefrulePPForm';
function  GetNextDefRule( defrulePtr: Pointer ): Pointer;  cdecl; external DLLName name 'GetNextDefrule';
function  GetNumberOfFacts: LongInt;  cdecl; external DLLName name 'GetNumberOfFacts';
procedure RemoveAllFacts;                     cdecl; external DLLName name 'RemoveAllFacts';


implementation

end.
