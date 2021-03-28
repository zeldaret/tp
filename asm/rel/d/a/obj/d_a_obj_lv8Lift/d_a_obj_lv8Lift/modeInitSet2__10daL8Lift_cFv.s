lbl_80C89A58:
/* 80C89A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89A5C  7C 08 02 A6 */	mflr r0
/* 80C89A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89A64  4B FF FC BD */	bl init_modeMoveWait__10daL8Lift_cFv
/* 80C89A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89A6C  7C 08 03 A6 */	mtlr r0
/* 80C89A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89A74  4E 80 00 20 */	blr 
