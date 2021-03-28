lbl_80B9296C:
/* 80B9296C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92970  7C 08 02 A6 */	mflr r0
/* 80B92974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9297C  7C 7F 1B 78 */	mr r31, r3
/* 80B92980  3C 80 80 B9 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 80B92984  38 04 3B CC */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 80B92988  90 03 00 04 */	stw r0, 4(r3)
/* 80B9298C  4B 5B DD 24 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80B92990  7F E3 FB 78 */	mr r3, r31
/* 80B92994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9299C  7C 08 03 A6 */	mtlr r0
/* 80B929A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B929A4  4E 80 00 20 */	blr 
