lbl_80B23BB8:
/* 80B23BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23BBC  7C 08 02 A6 */	mflr r0
/* 80B23BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23BC8  7C 7F 1B 78 */	mr r31, r3
/* 80B23BCC  3C 80 80 B2 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80B23BD0  38 04 57 2C */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80B23BD4  90 03 00 04 */	stw r0, 4(r3)
/* 80B23BD8  4B 62 1A FC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B23BDC  7F E3 FB 78 */	mr r3, r31
/* 80B23BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23BE8  7C 08 03 A6 */	mtlr r0
/* 80B23BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23BF0  4E 80 00 20 */	blr 
