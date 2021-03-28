lbl_8029E7E0:
/* 8029E7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E7E4  7C 08 02 A6 */	mflr r0
/* 8029E7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E7F0  48 0C 39 E1 */	bl _savegpr_26
/* 8029E7F4  7C 7A 1B 78 */	mr r26, r3
/* 8029E7F8  7C 9B 23 78 */	mr r27, r4
/* 8029E7FC  7C BE 2B 78 */	mr r30, r5
lbl_8029E800:
/* 8029E800  48 00 07 81 */	bl Dsp_Running_Check__Fv
/* 8029E804  2C 03 00 00 */	cmpwi r3, 0
/* 8029E808  41 82 FF F8 */	beq lbl_8029E800
/* 8029E80C  48 09 EE E9 */	bl OSDisableInterrupts
/* 8029E810  7C 7D 1B 78 */	mr r29, r3
/* 8029E814  48 0B 3C 1D */	bl DSPCheckMailToDSP
/* 8029E818  28 03 00 00 */	cmplwi r3, 0
/* 8029E81C  41 82 00 14 */	beq lbl_8029E830
/* 8029E820  7F A3 EB 78 */	mr r3, r29
/* 8029E824  48 09 EE F9 */	bl OSRestoreInterrupts
/* 8029E828  38 60 FF FF */	li r3, -1
/* 8029E82C  48 00 00 84 */	b lbl_8029E8B0
lbl_8029E830:
/* 8029E830  7F 63 DB 78 */	mr r3, r27
/* 8029E834  48 0B 3C 35 */	bl DSPSendMailToDSP
/* 8029E838  48 0B 3C 45 */	bl DSPAssertInt
/* 8029E83C  60 00 00 00 */	nop 
lbl_8029E840:
/* 8029E840  48 0B 3B F1 */	bl DSPCheckMailToDSP
/* 8029E844  28 03 00 00 */	cmplwi r3, 0
/* 8029E848  40 82 FF F8 */	bne lbl_8029E840
/* 8029E84C  28 1B 00 00 */	cmplwi r27, 0
/* 8029E850  40 82 00 08 */	bne lbl_8029E858
/* 8029E854  3B 60 00 01 */	li r27, 1
lbl_8029E858:
/* 8029E858  28 1E 00 00 */	cmplwi r30, 0
/* 8029E85C  41 82 00 14 */	beq lbl_8029E870
/* 8029E860  80 7A 00 00 */	lwz r3, 0(r26)
/* 8029E864  7F C4 F3 78 */	mr r4, r30
/* 8029E868  48 00 00 B9 */	bl DspStartWork__FUlPFUs_v
/* 8029E86C  7C 7C 1B 78 */	mr r28, r3
lbl_8029E870:
/* 8029E870  3B C0 00 00 */	li r30, 0
/* 8029E874  3B E0 00 00 */	li r31, 0
/* 8029E878  48 00 00 24 */	b lbl_8029E89C
lbl_8029E87C:
/* 8029E87C  7C 7A F8 2E */	lwzx r3, r26, r31
/* 8029E880  48 0B 3B E9 */	bl DSPSendMailToDSP
/* 8029E884  60 00 00 00 */	nop 
lbl_8029E888:
/* 8029E888  48 0B 3B A9 */	bl DSPCheckMailToDSP
/* 8029E88C  28 03 00 00 */	cmplwi r3, 0
/* 8029E890  40 82 FF F8 */	bne lbl_8029E888
/* 8029E894  3B DE 00 01 */	addi r30, r30, 1
/* 8029E898  3B FF 00 04 */	addi r31, r31, 4
lbl_8029E89C:
/* 8029E89C  7C 1E D8 40 */	cmplw r30, r27
/* 8029E8A0  41 80 FF DC */	blt lbl_8029E87C
/* 8029E8A4  7F A3 EB 78 */	mr r3, r29
/* 8029E8A8  48 09 EE 75 */	bl OSRestoreInterrupts
/* 8029E8AC  7F 83 E3 78 */	mr r3, r28
lbl_8029E8B0:
/* 8029E8B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E8B4  48 0C 39 69 */	bl _restgpr_26
/* 8029E8B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E8BC  7C 08 03 A6 */	mtlr r0
/* 8029E8C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E8C4  4E 80 00 20 */	blr 
