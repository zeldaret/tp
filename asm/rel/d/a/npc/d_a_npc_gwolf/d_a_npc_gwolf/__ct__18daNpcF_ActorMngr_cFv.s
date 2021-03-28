lbl_809F7BF8:
/* 809F7BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7BFC  7C 08 02 A6 */	mflr r0
/* 809F7C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7C08  7C 7F 1B 78 */	mr r31, r3
/* 809F7C0C  3C 80 80 A0 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 809F7C10  38 04 8E 80 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 809F7C14  90 03 00 04 */	stw r0, 4(r3)
/* 809F7C18  4B 75 8A 98 */	b initialize__18daNpcF_ActorMngr_cFv
/* 809F7C1C  7F E3 FB 78 */	mr r3, r31
/* 809F7C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7C28  7C 08 03 A6 */	mtlr r0
/* 809F7C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7C30  4E 80 00 20 */	blr 
