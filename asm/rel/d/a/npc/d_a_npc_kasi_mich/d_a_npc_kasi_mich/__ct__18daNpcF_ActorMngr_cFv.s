lbl_80A297BC:
/* 80A297BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A297C0  7C 08 02 A6 */	mflr r0
/* 80A297C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A297C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A297CC  7C 7F 1B 78 */	mr r31, r3
/* 80A297D0  3C 80 80 A3 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A2A740@ha */
/* 80A297D4  38 04 A7 40 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80A2A740@l */
/* 80A297D8  90 03 00 04 */	stw r0, 4(r3)
/* 80A297DC  4B 72 6E D5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A297E0  7F E3 FB 78 */	mr r3, r31
/* 80A297E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A297E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A297EC  7C 08 03 A6 */	mtlr r0
/* 80A297F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A297F4  4E 80 00 20 */	blr 
