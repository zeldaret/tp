lbl_809AD118:
/* 809AD118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD11C  7C 08 02 A6 */	mflr r0
/* 809AD120  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD128  7C 7F 1B 78 */	mr r31, r3
/* 809AD12C  3C 80 80 9B */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809ADD10@ha */
/* 809AD130  38 04 DD 10 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809ADD10@l */
/* 809AD134  90 03 00 04 */	stw r0, 4(r3)
/* 809AD138  4B 7A 35 79 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809AD13C  7F E3 FB 78 */	mr r3, r31
/* 809AD140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD148  7C 08 03 A6 */	mtlr r0
/* 809AD14C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD150  4E 80 00 20 */	blr 
