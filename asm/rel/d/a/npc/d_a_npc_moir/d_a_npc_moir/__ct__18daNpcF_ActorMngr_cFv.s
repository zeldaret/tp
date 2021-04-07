lbl_80A82950:
/* 80A82950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82954  7C 08 02 A6 */	mflr r0
/* 80A82958  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8295C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82960  7C 7F 1B 78 */	mr r31, r3
/* 80A82964  3C 80 80 A8 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A83D30@ha */
/* 80A82968  38 04 3D 30 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80A83D30@l */
/* 80A8296C  90 03 00 04 */	stw r0, 4(r3)
/* 80A82970  4B 6C DD 41 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A82974  7F E3 FB 78 */	mr r3, r31
/* 80A82978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A8297C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82980  7C 08 03 A6 */	mtlr r0
/* 80A82984  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82988  4E 80 00 20 */	blr 
