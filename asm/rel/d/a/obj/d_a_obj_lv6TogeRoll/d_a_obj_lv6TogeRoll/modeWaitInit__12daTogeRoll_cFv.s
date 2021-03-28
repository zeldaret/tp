lbl_80C792E4:
/* 80C792E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C792E8  7C 08 02 A6 */	mflr r0
/* 80C792EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C792F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C792F4  7C 7F 1B 78 */	mr r31, r3
/* 80C792F8  48 00 02 F1 */	bl setNextPoint__12daTogeRoll_cFv
/* 80C792FC  7F E3 FB 78 */	mr r3, r31
/* 80C79300  48 00 00 19 */	bl init_modeWait__12daTogeRoll_cFv
/* 80C79304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C79308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7930C  7C 08 03 A6 */	mtlr r0
/* 80C79310  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79314  4E 80 00 20 */	blr 
