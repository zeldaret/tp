lbl_80C8B4B8:
/* 80C8B4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B4BC  7C 08 02 A6 */	mflr r0
/* 80C8B4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B4C4  4B FF FC 3D */	bl init_modeMoveInit__12daOptiLift_cFv
/* 80C8B4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B4CC  7C 08 03 A6 */	mtlr r0
/* 80C8B4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B4D4  4E 80 00 20 */	blr 
