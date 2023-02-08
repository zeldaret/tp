lbl_80B40E80:
/* 80B40E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B40E84  7C 08 02 A6 */	mflr r0
/* 80B40E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B40E8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B40E90  7C 7F 1B 78 */	mr r31, r3
/* 80B40E94  3C 80 80 B4 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B42DD0@ha */
/* 80B40E98  38 04 2D D0 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80B42DD0@l */
/* 80B40E9C  90 03 00 04 */	stw r0, 4(r3)
/* 80B40EA0  4B 60 F8 11 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B40EA4  7F E3 FB 78 */	mr r3, r31
/* 80B40EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B40EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B40EB0  7C 08 03 A6 */	mtlr r0
/* 80B40EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B40EB8  4E 80 00 20 */	blr 
