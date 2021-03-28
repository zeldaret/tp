lbl_80673140:
/* 80673140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80673144  7C 08 02 A6 */	mflr r0
/* 80673148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067314C  4B FF FF 61 */	bl getBmd__12daMBdoorL1_cFv
/* 80673150  4B 9B C2 E4 */	b dComIfG_getStageRes__FPCc
/* 80673154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80673158  7C 08 03 A6 */	mtlr r0
/* 8067315C  38 21 00 10 */	addi r1, r1, 0x10
/* 80673160  4E 80 00 20 */	blr 
