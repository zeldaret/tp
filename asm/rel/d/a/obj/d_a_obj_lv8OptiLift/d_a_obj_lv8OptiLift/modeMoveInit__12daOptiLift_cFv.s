lbl_80C8B1B0:
/* 80C8B1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B1B4  7C 08 02 A6 */	mflr r0
/* 80C8B1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B1C0  7C 7F 1B 78 */	mr r31, r3
/* 80C8B1C4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C8B1C8  4B 38 22 60 */	b play__14mDoExt_baseAnmFv
/* 80C8B1CC  2C 03 00 01 */	cmpwi r3, 1
/* 80C8B1D0  40 82 00 0C */	bne lbl_80C8B1DC
/* 80C8B1D4  7F E3 FB 78 */	mr r3, r31
/* 80C8B1D8  48 00 00 19 */	bl init_modeMoveWait__12daOptiLift_cFv
lbl_80C8B1DC:
/* 80C8B1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B1E4  7C 08 03 A6 */	mtlr r0
/* 80C8B1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B1EC  4E 80 00 20 */	blr 
