lbl_80A0BA64:
/* 80A0BA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0BA68  7C 08 02 A6 */	mflr r0
/* 80A0BA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0BA70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0BA74  7C 7F 1B 78 */	mr r31, r3
/* 80A0BA78  3C 80 80 A1 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A0C8B0@ha */
/* 80A0BA7C  38 04 C8 B0 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80A0C8B0@l */
/* 80A0BA80  90 03 00 04 */	stw r0, 4(r3)
/* 80A0BA84  4B 74 4C 2D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A0BA88  7F E3 FB 78 */	mr r3, r31
/* 80A0BA8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0BA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0BA94  7C 08 03 A6 */	mtlr r0
/* 80A0BA98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0BA9C  4E 80 00 20 */	blr 
