lbl_80AA07A0:
/* 80AA07A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA07A4  7C 08 02 A6 */	mflr r0
/* 80AA07A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA07AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA07B0  7C 7F 1B 78 */	mr r31, r3
/* 80AA07B4  3C 80 80 AA */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA07B8  38 04 2A 80 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA07BC  90 03 00 04 */	stw r0, 4(r3)
/* 80AA07C0  4B 6A 4F 15 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AA07C4  7F E3 FB 78 */	mr r3, r31
/* 80AA07C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA07CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA07D0  7C 08 03 A6 */	mtlr r0
/* 80AA07D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA07D8  4E 80 00 20 */	blr 
