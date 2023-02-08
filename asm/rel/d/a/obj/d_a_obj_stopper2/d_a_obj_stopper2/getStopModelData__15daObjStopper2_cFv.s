lbl_80CEF368:
/* 80CEF368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF36C  7C 08 02 A6 */	mflr r0
/* 80CEF370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF374  4B FF FF E5 */	bl getStopName__Fv
/* 80CEF378  4B 34 00 BD */	bl dComIfG_getStageRes__FPCc
/* 80CEF37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF380  7C 08 03 A6 */	mtlr r0
/* 80CEF384  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF388  4E 80 00 20 */	blr 
