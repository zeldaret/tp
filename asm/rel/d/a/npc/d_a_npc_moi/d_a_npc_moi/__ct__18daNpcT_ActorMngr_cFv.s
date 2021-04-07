lbl_80A79F2C:
/* 80A79F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79F30  7C 08 02 A6 */	mflr r0
/* 80A79F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79F3C  7C 7F 1B 78 */	mr r31, r3
/* 80A79F40  3C 80 80 A8 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A79F44  38 04 BE 88 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A79F48  90 03 00 04 */	stw r0, 4(r3)
/* 80A79F4C  4B 6C B7 89 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A79F50  7F E3 FB 78 */	mr r3, r31
/* 80A79F54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79F5C  7C 08 03 A6 */	mtlr r0
/* 80A79F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79F64  4E 80 00 20 */	blr 
