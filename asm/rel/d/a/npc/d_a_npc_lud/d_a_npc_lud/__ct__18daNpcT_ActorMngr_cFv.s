lbl_80A6EF44:
/* 80A6EF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EF48  7C 08 02 A6 */	mflr r0
/* 80A6EF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EF50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6EF54  7C 7F 1B 78 */	mr r31, r3
/* 80A6EF58  3C 80 80 A7 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6EF5C  38 04 0A 4C */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80A6EF60  90 03 00 04 */	stw r0, 4(r3)
/* 80A6EF64  4B 6D 67 70 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6EF68  7F E3 FB 78 */	mr r3, r31
/* 80A6EF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6EF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EF74  7C 08 03 A6 */	mtlr r0
/* 80A6EF78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EF7C  4E 80 00 20 */	blr 
