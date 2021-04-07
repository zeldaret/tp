lbl_80A25028:
/* 80A25028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2502C  7C 08 02 A6 */	mflr r0
/* 80A25030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A25034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A25038  7C 7F 1B 78 */	mr r31, r3
/* 80A2503C  3C 80 80 A2 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A25FB0@ha */
/* 80A25040  38 04 5F B0 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80A25FB0@l */
/* 80A25044  90 03 00 04 */	stw r0, 4(r3)
/* 80A25048  4B 72 B6 69 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A2504C  7F E3 FB 78 */	mr r3, r31
/* 80A25050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A25054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A25058  7C 08 03 A6 */	mtlr r0
/* 80A2505C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25060  4E 80 00 20 */	blr 
