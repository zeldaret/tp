lbl_80878ED4:
/* 80878ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878ED8  7C 08 02 A6 */	mflr r0
/* 80878EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80878EE4  7C 7F 1B 78 */	mr r31, r3
/* 80878EE8  4B 79 FC 7C */	b __ct__10fopAc_ac_cFv
/* 80878EEC  7F E3 FB 78 */	mr r3, r31
/* 80878EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80878EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878EF8  7C 08 03 A6 */	mtlr r0
/* 80878EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80878F00  4E 80 00 20 */	blr 
