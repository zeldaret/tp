lbl_80460B70:
/* 80460B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460B74  7C 08 02 A6 */	mflr r0
/* 80460B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460B7C  4B FF FF BD */	bl getStopBmdName__10daDoor20_cFv
/* 80460B80  4B BC E8 B4 */	b dComIfG_getStageRes__FPCc
/* 80460B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460B88  7C 08 03 A6 */	mtlr r0
/* 80460B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80460B90  4E 80 00 20 */	blr 
