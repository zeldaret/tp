lbl_809FF2E8:
/* 809FF2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF2EC  7C 08 02 A6 */	mflr r0
/* 809FF2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF2F8  7C 7F 1B 78 */	mr r31, r3
/* 809FF2FC  3C 80 80 A0 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A01170@ha */
/* 809FF300  38 04 11 70 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80A01170@l */
/* 809FF304  90 03 00 04 */	stw r0, 4(r3)
/* 809FF308  4B 74 63 CD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809FF30C  7F E3 FB 78 */	mr r3, r31
/* 809FF310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF318  7C 08 03 A6 */	mtlr r0
/* 809FF31C  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF320  4E 80 00 20 */	blr 
