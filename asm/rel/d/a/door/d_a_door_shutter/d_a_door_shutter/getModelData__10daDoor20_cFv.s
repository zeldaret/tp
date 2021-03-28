lbl_80460D5C:
/* 80460D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460D60  7C 08 02 A6 */	mflr r0
/* 80460D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460D68  4B FF FE D9 */	bl getBmdName__10daDoor20_cFv
/* 80460D6C  4B BC E6 C8 */	b dComIfG_getStageRes__FPCc
/* 80460D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460D74  7C 08 03 A6 */	mtlr r0
/* 80460D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80460D7C  4E 80 00 20 */	blr 
