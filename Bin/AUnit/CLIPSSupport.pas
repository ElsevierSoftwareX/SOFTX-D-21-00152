unit CLIPSSupport;

interface

uses
    SysUtils;

type
  { clips exceptions }
  ECLIPSException = class( Exception );
  ECLIPSIOException = class( ECLIPSException );
  ECLIPSOpenException = class( ECLIPSIOException );
  ECLIPSKillException = class( ECLIPSException );
  ECLIPSReadException = class( ECLIPSIOException );
  ECLIPSWriteException = class( ECLIPSIOException );
  ECLIPSUnknownSlot = class( ECLIPSException );
  ECLIPSInvalidDataObject = class( ECLIPSException );
  ECLIPSFactInvalid = class( ECLIPSException );

    TClipsType = ( ctFLOAT, ctINTEGER, ctSYMBOL, ctSTRING, ctMULTIFIELD,
                    ctEXTERNAL_ADDRESS, ctFACT_ADDRESS, ctINSTANCE_ADDRESS,
                    ctINSTANCE_NAME );
    TClipsStrategy = ( csDepthStrategy, csBreadthStrategy, csLexStrategy, csMeaStrategy,
                       csComplexityStrategy, csSimplicityStrategy, csRandomStrategy );

    PClipsField = ^TClipsField;
    TClipsField = record
       TheType: TClipsType;
       Value: Pointer;
    end;
    PClipsMultiField = ^TClipsMultiField;
    TClipsMultiField = record
       BusyCount: Cardinal;
       Depth: ShortInt;
       MultifieldLength: Byte;
       TheFields: Pointer { Array of TClipsField };
    end;

    PClipsDataObject = ^TClipsDataObject;
    TClipsDataObject = record
       SupplementalInfo: Pointer;
       TheType: TClipsType;
       Value: Pointer;
       TheBegin,
       TheEnd: SmallInt;
       Next: PClipsDataObject;
    end;

    PClipsSymbolHashNode = ^TClipsSymbolHashNode;
    TClipsSymbolHashNode = record
       Next: PClipsSymbolHashNode;
       Count: Integer;
       Depth: Integer;
  { unsigned int markedEphemeral : 1;
   unsigned int neededSymbol : 1;
   unsigned int bucket : 14;      }
       Bucket: Word;
       Contents: PAnsiChar;
    end;

    PClipsFloatHashNode = ^TClipsFloatHashNode;
    TClipsFloatHashNode = record
       Next: PClipsFloatHashNode;
       Count: Integer;
       Depth: Integer;
  { unsigned int markedEphemeral : 1;
   unsigned int neededSymbol : 1;
   unsigned int bucket : 14;      }
       Bucket: Word;
       Contents: Double;
    end;

    PClipsIntegerHashNode = ^TClipsIntegerHashNode;
    TClipsIntegerHashNode = record
       Next: PClipsIntegerHashNode;
       Count: Integer;
       Depth: Integer;
  { unsigned int markedEphemeral : 1;
   unsigned int neededSymbol : 1;
   unsigned int bucket : 14;      }
       Bucket: Word;
       Contents: Integer;
    end;

    PClipsBitmapHashNode = ^TClipsBitmapHashNode;
    TClipsBitmapHashNode = record
       Next: PClipsBitmapHashNode;
       Count: Integer;
       Depth: Integer;
  { unsigned int markedEphemeral : 1;
   unsigned int neededSymbol : 1;
   unsigned int bucket : 14;      }
       Bucket: Word;
       Contents: PAnsiChar;
       Size: Byte;
    end;

    PEntityRecord = ^TEntityRecord;
    TEntityRecord = record
  {
   unsigned int type : 13;
   unsigned int copyToEvaluate : 1;
   unsigned int bitMap : 1;
   unsigned int addsToRuleComplexity : 1;
}
       TypeAndStuff: Word;
       shortPrintFunction: Pointer;
       longPrintFunction: Pointer;
       deleteFunction: Pointer;
       evaluateFunction: Pointer;
       getNextFunction: Pointer;
       decrementBusyCount: Pointer;
       incrementBusyCount: Pointer;
       propagateDepth: Pointer;
       markNeeded: Pointer;
       install: Pointer;
       deinstall: Pointer;
    end;

    PPatternEntityRecord = ^TPatternEntityRecord;
    TPatternEntityRecord = record
       Base: TEntityRecord;
       decrementBasisCount,
       incrementBasisCount,
       matchFunction: Pointer;
    end;

    PPatternEntity = ^TPatternEntity;
    TPatternEntity = record
       TheInfo: PPatternEntityRecord;
       Dependents: Pointer;
       BusyCount: Cardinal;
       TimeTag: LongInt;
       {
#if LOGICAL_DEPENDENCIES
   VOID *dependents;
#endif
   unsigned busyCount;
   long int timeTag;  }
    end;

    PConstructHeader = ^TConstructHeader;
    TConstructHeader = record
       Name: PClipsSymbolHashNode;
       PPForm: PAnsiChar;
       WhichModule: Pointer; { struct defmoduleItemHeader }
       BSaveID: LongInt;
       Next: PConstructHeader;
    end;

    PTemplateSlot = ^TTemplateSlot;
    TTemplateSlot = record
       SlotName: PClipsSymbolHashNode;
       MultislotNStuff: Byte;
{   unsigned int multislot : 1;
   unsigned int noDefault : 1;
   unsigned int defaultPresent : 1;
   unsigned int defaultDynamic : 1;     }
       Constraints: Pointer; { CONSTRAINT_RECORD }
       DefaultList: Pointer; { struct expr *defaultList }
       Next: PTemplateSlot;
    end;

    PDefTemplate = ^TDefTemplate;
    TDefTemplate = record
       Header: TConstructHeader;
       SlotList: PTemplateSlot; 
       ImpliedNStuff: Word;
{   unsigned int implied       : 1;
   unsigned int watch         : 1;
   unsigned int inScope       : 1;
   unsigned int numberOfSlots : 13;
}
       PatternNetwork: Pointer { struct factPatternNode }
    end;

    PFact = ^TFact;
    TFact = record
       FactHeader: TPatternEntity;
       WhichDefTemplate: PDefTemplate;
       List: Pointer;
       FactIndex: LongInt;
       DepthNGarbage: Word;
       PreviousFact,
       NextFact: PFact;
       TheProposition: Pointer { struct multifield }
    end;

    function GetFactName( FactPtr: Pointer ): AnsiString;
    function ValueToString( Target: Pointer ): AnsiString;
    function ValueToDouble( Target: Pointer ): Double;
    function ValueToLong( Target: Pointer ): LongInt;
    function ValueToInteger( Target: Pointer ): Integer;
    function ValueToBitMap( Target: Pointer ): Pointer;
    function StringToValue( Target: Pointer; Value: PAnsiChar ): Pointer;
    function DoubleToValue( Target: Pointer; Value: Double ): Pointer;
    function LongToValue( Target: Pointer; Value: LongInt ): Pointer;
    function IntegerToValue( Target: Pointer; Value: Integer ): Pointer;
    function BitMapToValue( Target: Pointer; Value: Pointer ): Pointer;


implementation

function GetFactName( FactPtr: Pointer ): AnsiString;
begin
     result := ValueToString(PFact( FactPtr ).WhichDefTemplate.Header.Name);
end;

function ValueToString( Target: Pointer ): AnsiString;
begin
     result := PClipsSymbolHashNode( Target ).Contents;
end;

function ValueToDouble( Target: Pointer ): Double;
begin
     result := PClipsFloatHashNode( Target ).Contents;
end;

function ValueToLong( Target: Pointer ): LongInt;
begin
     result := PClipsIntegerHashNode( Target ).Contents;
end;

function ValueToInteger( Target: Pointer ): Integer;
begin
     result := PClipsIntegerHashNode( Target ).Contents;
end;

function ValueToBitMap( Target: Pointer ): Pointer;
begin
     result := PClipsBitmapHashNode( Target ).Contents;
end;

function StringToValue( Target: Pointer; Value: PAnsiChar ): Pointer;
begin
     result := Target;
     PClipsSymbolHashNode( result ).Contents := Value;
end;

function DoubleToValue( Target: Pointer; Value: Double ): Pointer;
begin
     result := Target;
     PClipsFloatHashNode( result ).Contents := Value;
end;

function LongToValue( Target: Pointer; Value: LongInt ): Pointer;
begin
     result := Target;
     PClipsIntegerHashNode( result ).Contents := Value;
end;

function IntegerToValue( Target: Pointer; Value: Integer ): Pointer;
begin
     result := Target;
     PClipsIntegerHashNode( result ).Contents := Value;
end;

function BitMapToValue( Target: Pointer; Value: Pointer ): Pointer;
begin
     result := Target;
     PClipsBitmapHashNode( result ).Contents := Value;
end;

end.
