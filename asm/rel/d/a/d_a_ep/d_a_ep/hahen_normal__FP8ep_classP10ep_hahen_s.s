lbl_80468A70:
/* 80468A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80468A74  7C 08 02 A6 */	mflr r0
/* 80468A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80468A7C  4B FF F8 7D */	bl move_calc__FP8ep_classP10ep_hahen_s
/* 80468A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80468A84  7C 08 03 A6 */	mtlr r0
/* 80468A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80468A8C  4E 80 00 20 */	blr 
