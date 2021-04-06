lbl_80A207C4:
/* 80A207C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A207C8  7C 08 02 A6 */	mflr r0
/* 80A207CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A207D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A207D4  7C 7F 1B 78 */	mr r31, r3
/* 80A207D8  3C 80 80 A2 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A207DC  38 04 17 AC */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A207E0  90 03 00 04 */	stw r0, 4(r3)
/* 80A207E4  4B 72 FE CD */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A207E8  7F E3 FB 78 */	mr r3, r31
/* 80A207EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A207F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A207F4  7C 08 03 A6 */	mtlr r0
/* 80A207F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A207FC  4E 80 00 20 */	blr 
