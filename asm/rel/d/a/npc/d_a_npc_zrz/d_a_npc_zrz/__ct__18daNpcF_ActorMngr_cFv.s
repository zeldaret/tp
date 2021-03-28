lbl_80B9A6AC:
/* 80B9A6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A6B0  7C 08 02 A6 */	mflr r0
/* 80B9A6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A6BC  7C 7F 1B 78 */	mr r31, r3
/* 80B9A6C0  3C 80 80 BA */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 80B9A6C4  38 04 B8 0C */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 80B9A6C8  90 03 00 04 */	stw r0, 4(r3)
/* 80B9A6CC  4B 5B 5F E4 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80B9A6D0  7F E3 FB 78 */	mr r3, r31
/* 80B9A6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9A6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A6DC  7C 08 03 A6 */	mtlr r0
/* 80B9A6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A6E4  4E 80 00 20 */	blr 
