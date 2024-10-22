#ifndef JASSEQPARSER_H
#define JASSEQPARSER_H

#include "dolphin/types.h"

class JASTrack;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASSeqParser {
public:
    enum BranchCondition {};

    struct CmdInfo {
        s32 (JASSeqParser::*field_0x0)(JASTrack*, u32*);
        u16 field_0xc;
        u16 field_0xe;
    };

    /* 80293CAC */ virtual ~JASSeqParser() {}
    /* 802958D4 */ virtual s32 parse(JASTrack*);
    /* 80295540 */ virtual s32 execNoteOnMidi(JASTrack*, u32, u32, u32);
    /* 80295498 */ virtual s32 execNoteOnGate(JASTrack*, u32, u32, u32, u32);
    /* 80295570 */ virtual s32 execNoteOff(JASTrack*, u32);
    /* 8029559C */ virtual s32 execCommand(JASTrack*, s32 (JASSeqParser::*)(JASTrack*, u32*), u32, u32*);

    /* 80293CF4 */ bool conditionCheck(JASTrack*, JASSeqParser::BranchCondition);
    /* 80293DC4 */ void writeReg(JASTrack*, u32, u32);
    /* 80293FC8 */ u32 readReg(JASTrack*, u32) const;
    /* 80294188 */ s32 cmdOpenTrack(JASTrack*, u32*);
    /* 802941F0 */ s32 cmdCloseTrack(JASTrack*, u32*);
    /* 8029421C */ s32 cmdCall(JASTrack*, u32*);
    /* 80294248 */ s32 cmdCallF(JASTrack*, u32*);
    /* 8029429C */ s32 cmdRet(JASTrack*, u32*);
    /* 802942D4 */ s32 cmdRetF(JASTrack*, u32*);
    /* 80294328 */ s32 cmdJmp(JASTrack*, u32*);
    /* 80294340 */ s32 cmdJmpF(JASTrack*, u32*);
    /* 80294398 */ s32 cmdJmpTable(JASTrack*, u32*);
    /* 802943CC */ s32 cmdCallTable(JASTrack*, u32*);
    /* 8029441C */ s32 cmdLoopS(JASTrack*, u32*);
    /* 80294448 */ s32 cmdLoopE(JASTrack*, u32*);
    /* 80294470 */ s32 cmdNote(JASTrack*, u32*);
    /* 802944B4 */ s32 cmdNoteOn(JASTrack*, u32*);
    /* 802944F4 */ s32 cmdNoteOff(JASTrack*, u32*);
    /* 80294528 */ s32 cmdReadPort(JASTrack*, u32*);
    /* 80294588 */ s32 cmdWritePort(JASTrack*, u32*);
    /* 802945BC */ s32 cmdParentWritePort(JASTrack*, u32*);
    /* 802945F8 */ s32 cmdChildWritePort(JASTrack*, u32*);
    /* 80294644 */ s32 cmdParentReadPort(JASTrack*, u32*);
    /* 802946AC */ s32 cmdChildReadPort(JASTrack*, u32*);
    /* 80294724 */ s32 cmdCheckPortImport(JASTrack*, u32*);
    /* 80294770 */ s32 cmdCheckPortExport(JASTrack*, u32*);
    /* 802947BC */ s32 cmdWait(JASTrack*, u32*);
    /* 802947F4 */ s32 cmdWaitByte(JASTrack*, u32*);
    /* 80294804 */ s32 cmdSetLastNote(JASTrack*, u32*);
    /* 8029483C */ s32 cmdEnvScaleSet(JASTrack*, u32*);
    /* 8029488C */ s32 cmdEnvSet(JASTrack*, u32*);
    /* 802948C8 */ s32 cmdSimpleADSR(JASTrack*, u32*);
    /* 8029491C */ s32 cmdBusConnect(JASTrack*, u32*);
    /* 8029494C */ s32 cmdSetIntTable(JASTrack*, u32*);
    /* 8029495C */ s32 cmdSetInterrupt(JASTrack*, u32*);
    /* 80294988 */ s32 cmdDisInterrupt(JASTrack*, u32*);
    /* 802949B4 */ s32 cmdClrI(JASTrack*, u32*);
    /* 802949E4 */ s32 cmdRetI(JASTrack*, u32*);
    /* 80294A20 */ s32 cmdIntTimer(JASTrack*, u32*);
    /* 80294A3C */ s32 cmdSyncCPU(JASTrack*, u32*);
    /* 80294AA4 */ s32 cmdTempo(JASTrack*, u32*);
    /* 80294AD4 */ s32 cmdFinish(JASTrack*, u32*);
    /* 80294ADC */ s32 cmdNop(JASTrack*, u32*);
    /* 80294AE4 */ s32 cmdFIRSet(JASTrack*, u32*);
    /* 80294B1C */ s32 cmdIIRSet(JASTrack*, u32*);
    /* 80294B70 */ s32 cmdIIRCutOff(JASTrack*, u32*);
    /* 80294BB4 */ s32 cmdBankPrg(JASTrack*, u32*);
    /* 80294BD0 */ s32 cmdBank(JASTrack*, u32*);
    /* 80294BE4 */ s32 cmdPrg(JASTrack*, u32*);
    /* 80294BF8 */ s32 cmdParamI(JASTrack*, u32*);
    /* 80294C54 */ s32 cmdParamII(JASTrack*, u32*);
    /* 80294CB0 */ s32 cmdParamE(JASTrack*, u32*);
    /* 80294D2C */ s32 cmdParamEI(JASTrack*, u32*);
    /* 80294DA8 */ s32 cmdReg(JASTrack*, u32*);
    /* 80294F10 */ s32 cmdRegLoad(JASTrack*, u32*);
    /* 80294F40 */ s32 cmdRegUni(JASTrack*, u32*);
    /* 80294FB4 */ s32 cmdRegTblLoad(JASTrack*, u32*);
    /* 80295088 */ s32 cmdDump(JASTrack*, u32*);
    /* 8029526C */ s32 cmdPrintf(JASTrack*, u32*);
    /* 802955C8 */ s32 parseNoteOff(JASTrack*, u8);
    /* 80295600 */ s32 parseNoteOn(JASTrack*, u8);
    /* 802956B0 */ s32 parseCommand(JASTrack*, u8, u16);
    /* 80295864 */ s32 parseRegCommand(JASTrack*, int);

    static void registerSeqCallback(u16 (*param_0)(JASTrack*, u16)) { sCallBackFunc = param_0; }

    static CmdInfo sCmdInfo[96];
    static CmdInfo sExtCmdInfo[255];
    static u16 (*sCallBackFunc)(JASTrack*, u16);
};

#endif /* JASSEQPARSER_H */
